# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# coding: utf-8

Category.first_or_create([
  {:id => 1, :name => 'Tech'},
  {:id => 200, :name => 'Design'},
  {:id => 300, :name => 'Blog'},
  {:id => 400, :name => 'Github'},
  {:id => 999, :name => 'General'}
])

Channel.first_or_create([
  {:id => 1, :name => 'Tech News', :category_id => 1, :default => true, :enabled => true},
  {:id => 2, :name => 'Gajet News', :category_id => 1, :default => true, :enabled => true},
  {:id => 3, :name => 'Develop News', :category_id => 1, :default => true, :enabled => true},
  {:id => 4, :name => 'Security News', :category_id => 1, :default => true, :enabled => true},
  {:id => 201, :name => 'Design News', :category_id => 200, :default => true, :enabled => true},
  {:id => 202, :name => 'Frontend News', :category_id => 200, :default => true, :enabled => true},
  {:id => 301, :name => 'Company Tech Blog', :category_id => 300, :default => true, :enabled => true},
  {:id => 302, :name => 'Personal Tech Blog', :category_id => 300, :default => true, :enabled => true},
  {:id => 303, :name => 'Company Design Blog', :category_id => 300, :default => true, :enabled => true},
  {:id => 304, :name => 'Personal Design Blog', :category_id => 300, :default => true, :enabled => true},
  {:id => 401, :name => 'Github Release', :category_id => 400, :default => true, :enabled => true},
  {:id => 402, :name => 'Github Trend', :category_id => 400, :default => true, :enabled => true},
  {:id => 999, :name => 'General News', :category_id => 999, :default => true, :enabled => true}
])

Site.first_or_create([
  {:id => 1, :name => 'はてぶ IT Entry', :channel_id => 1, :url => 'http://b.hatena.ne.jp/entrylist/it.rss'},
  {:id => 2, :name => 'TechCrunch Japan', :channel_id => 1, :url => 'http://jp.techcrunch.com/feed/'},
  {:id => 3, :name => 'TECHABLE', :channel_id => 1, :url => 'http://techable.jp/feed/'},
  {:id => 4, :name => 'GIGAZINE', :channel_id => 1, :url => 'http://feed.rssad.jp/rss/gigazine/rss_1.0'},
  {:id => 5, :name => 'OSSNEWS', :channel_id => 1, :url => 'http://www.ossnews.jp/oss_info/atom.xml'},
  {:id => 6, :name => 'scan.netsecurity', :channel_id => 4, :url => 'http://scan.netsecurity.ne.jp/rss/index.rdf'},
  {:id => 7, :name => 'トレンドマイクロ セキュリティブログ', :channel_id => 4, :url => 'http://feeds.trendmicro.com/TM-SecurityBlog?format=xml'},
  {:id => 8, :name => 'クックパッド開発者ブログ', :channel_id => 301, :url => 'http://techlife.cookpad.com/feed'},
  {:id => 9, :name => 'Hatena::Engineering', :channel_id => 301, :url => 'http://d.hatena.ne.jp/hatenatech/rss'},
  {:id => 10, :name => 'サイバーエージェント 公式エンジニアブログ', :channel_id => 301, :url => 'http://rssblog.ameba.jp/principia-ca/rss20.xml'},
  {:id => 11, :name => 'Release notes from rails', :channel_id => 401, :url => 'https://github.com/rails/rails/releases.atom'},
  {:id => 12, :name => 'Release notes from phoenix', :channel_id => 401, :url => 'https://github.com/phoenixframework/phoenix/releases.atom'},
  {:id => 13, :name => 'GitHub Trends - Ruby - Daily', :channel_id => 402, :url => 'http://github-trends.ryotarai.info/rss/github_trends_ruby_daily.rss'},
  {:id => 14, :name => 'GitHub Trends - Go - Daily', :channel_id => 402, :url => 'http://github-trends.ryotarai.info/rss/github_trends_go_daily.rss'},
  {:id => 15, :name => 'GitHub Trends - Elixir - Daily', :channel_id => 402, :url => 'http://github-trends.ryotarai.info/rss/github_trends_elixir_daily.rss'},
  {:id => 16, :name => 'Google Top News', :channel_id => 999, :url => 'http://news.google.com/news?hl=ja&ned=us&ie=UTF-8&oe=UTF-8&output=rss&num=5'},
  {:id => 17, :name => 'Google ホーチミン News', :channel_id => 999, :url => 'http://news.google.com/news?ned=us&ie=UTF-8&oe=UTF-8&q=%E3%83%9B%E3%83%BC%E3%83%81%E3%83%9F%E3%83%B3&output=rss&num=5&hl=ja'},
  {:id => 18, :name => 'POSTD', :channel_id => 3, :url => 'http://postd.cc/feed/'},
  {:id => 19, :name => 'InfoQ', :channel_id => 3, :url => 'https://www.infoq.com/feed'},
  {:id => 20, :name => 'CodeZine', :channel_id => 3, :url => 'http://rss.rssad.jp/rss/codezine/new/20/index.xml'},
  {:id => 21, :name => 'Hacker News', :channel_id => 3, :url => 'https://news.ycombinator.com/rss'},
])
