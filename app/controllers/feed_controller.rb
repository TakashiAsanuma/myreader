require 'feedjira'

class FeedController < ApplicationController
  def index
    @sections = {}

    site_name = "はてぶ IT Entry"
    feeds = Feedjira::Feed.fetch_and_parse("http://b.hatena.ne.jp/entrylist/it.rss")
    @sections[site_name] = feeds.entries.first(5)

    site_name = "GIGAZINE"
    feeds = Feedjira::Feed.fetch_and_parse("http://feed.rssad.jp/rss/gigazine/rss_1.0")
    @sections[site_name] = feeds.entries.first(5)

    site_name = "アプギガ"
    feeds = Feedjira::Feed.fetch_and_parse("http://plus.appgiga.jp/feed/user")
    @sections[site_name] = feeds.entries.first(5)

    site_name = "codezine"
    feeds = Feedjira::Feed.fetch_and_parse("http://rss.rssad.jp/rss/codezine/new/20/index.xml")
    @sections[site_name] = feeds.entries.first(5)

    site_name = "Google Top News"
    feeds = Feedjira::Feed.fetch_and_parse("http://news.google.com/news?hl=ja&ned=us&ie=UTF-8&oe=UTF-8&output=rss&num=5")
    @sections[site_name] = feeds.entries

    site_name = "Google ホーチミン News"
    feeds = Feedjira::Feed.fetch_and_parse("http://news.google.com/news?ned=us&ie=UTF-8&oe=UTF-8&q=%E3%83%9B%E3%83%BC%E3%83%81%E3%83%9F%E3%83%B3&output=rss&num=5&hl=ja")
    @sections[site_name] = feeds.entries
  end
end
