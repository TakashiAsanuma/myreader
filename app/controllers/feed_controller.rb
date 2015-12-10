require 'feedjira'

class FeedController < ApplicationController
  def index
    hatena_it = Feedjira::Feed.fetch_and_parse("http://b.hatena.ne.jp/entrylist/it.rss")
    @hatena_it_entry = hatena_it.entries.first(5)

    appgiga = Feedjira::Feed.fetch_and_parse("http://plus.appgiga.jp/feed/user")
    @appgiga_entry = appgiga.entries.first(5)

    codezine = Feedjira::Feed.fetch_and_parse("http://rss.rssad.jp/rss/codezine/new/20/index.xml")
    @codezine_entry = codezine.entries.first(5)

    google_top = Feedjira::Feed.fetch_and_parse("http://news.google.com/news?hl=ja&ned=us&ie=UTF-8&oe=UTF-8&output=rss&num=5")
    @google_top_entry = google_top.entries

    google_hcmc = Feedjira::Feed.fetch_and_parse("http://news.google.com/news?ned=us&ie=UTF-8&oe=UTF-8&q=%E3%83%9B%E3%83%BC%E3%83%81%E3%83%9F%E3%83%B3&output=rss&num=5&hl=ja")
    @google_hcmc_entry = google_hcmc.entries
  end
end
