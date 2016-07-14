require 'feedjira'

namespace :feeds do
  desc "Create feeds"

  task :create => :environment do
    FEED_LOG = ::Logger.new(File.join(Rails.root, Settings.feed.logger.path),
      Settings.feed.logger.age,
      Settings.feed.logger.size)

    feeds = {}
    time = Time.zone.now

    FEED_LOG.info("start create feed" )

    sites = Site.all
    sites.each do |site|
      begin
        results = Feedjira::Feed.fetch_and_parse(site.url)
      rescue => e
        FEED_LOG.error(e.message)
      end
      next if results.blank?

      results.entries.first(5).each do |feed|
        begin
          summary = ActionController::Base.helpers.truncate(ActionController::Base.helpers.strip_tags(feed.summary), :length => 120)
          old_feed = Feed.where(["created_at < :created_at and site_id = :site_id", {created_at: time, site_id: site.id}]).limit(1)
          Feed.destroy(old_feed.first.id) if old_feed.present?
          if feed.published <= time
            Feed.create(site_id: site.id, channel_id: site.channel_id, region: site.channel_region, default_flag: site.channel_default_flag, title: feed.title, url: feed.url, published_at: feed.published, summary: summary)
            FEED_LOG.info("create feed: " + feed.title )
          end
        rescue => e
          FEED_LOG.error(e.message)
        end
      end
    end
    FEED_LOG.info("finish create feed" )
  end
end
