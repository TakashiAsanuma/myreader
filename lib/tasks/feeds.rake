require 'feedjira'

namespace :feeds do
  desc "Create feeds"

  task :create => :environment do
    feeds = {}
    sites = Site.all
    sites.each do |site|
      results = Feedjira::Feed.fetch_and_parse(site.url)
      results.entries.first(5).each do |feed|
        #published_at = feed.published.in_time_zone('Tokyo').strftime("%Y-%m-%d %H:%M")
        summary = ActionController::Base.helpers.truncate(ActionController::Base.helpers.strip_tags(feed.summary), :length => 120)
        Feed.create(site_id: site.id, title: feed.title, url: feed.url, published_at: feed.published, summary: summary)
        puts feed.title
      end
    end
  end
end
