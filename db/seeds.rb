# This file should contain all the record creation needed to seed the database with its default_flag values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# coding: utf-8

Category.first_or_create([
  {:id => 1, :name => 'Tech', :region => 0},
  {:id => 200, :name => 'Design', :region => 0},
  {:id => 300, :name => 'Blog', :region => 0},
  {:id => 400, :name => 'Github', :region => 0},
  {:id => 999, :name => 'General', :region => 0},
  {:id => 1000, :name => 'テック', :region => 1},
  {:id => 1200, :name => 'デザイン', :region => 1},
  {:id => 1300, :name => 'ブログ', :region => 1},
  {:id => 1400, :name => 'Github', :region => 1},
  {:id => 1999, :name => '一般', :region => 1}
])

Channel.first_or_create([
  {:id => 1, :name => 'Tech News', :region => 0, :category_id => 1, :default_flag => true, :enabled => true},
  {:id => 2, :name => 'Gajet News', :region => 0, :category_id => 1, :default_flag => true, :enabled => true},
  {:id => 3, :name => 'Develop News', :region => 0, :category_id => 1, :default_flag => true, :enabled => true},
  {:id => 4, :name => 'Security News', :region => 0, :category_id => 1, :default_flag => true, :enabled => true},
  {:id => 201, :name => 'Design News', :region => 0, :category_id => 200, :default_flag => true, :enabled => true},
  {:id => 202, :name => 'Frontend News', :region => 0, :category_id => 200, :default_flag => true, :enabled => true},
  {:id => 301, :name => 'Company Tech Blog', :region => 0, :category_id => 300, :default_flag => true, :enabled => true},
  {:id => 302, :name => 'Personal Tech Blog', :region => 0, :category_id => 300, :default_flag => true, :enabled => true},
  {:id => 303, :name => 'Company Design Blog', :region => 0, :category_id => 300, :default_flag => true, :enabled => true},
  {:id => 304, :name => 'Personal Design Blog', :region => 0, :category_id => 300, :default_flag => true, :enabled => true},
  {:id => 401, :name => 'Github Release', :region => 0, :category_id => 400, :default_flag => false, :enabled => true},
  {:id => 402, :name => 'Github Trend', :region => 0, :category_id => 400, :default_flag => false, :enabled => true},
  {:id => 999, :name => 'General News', :region => 0, :category_id => 999, :default_flag => true, :enabled => true},
  {:id => 1001, :name => 'テック', :region => 1, :category_id => 1000, :default_flag => true, :enabled => true},
  {:id => 1002, :name => 'ガジェット', :region => 1, :category_id => 1000, :default_flag => true, :enabled => true},
  {:id => 1003, :name => 'デベロップ', :region => 1, :category_id => 1000, :default_flag => true, :enabled => true},
  {:id => 1004, :name => 'セキュリティ', :region => 1, :category_id => 1000, :default_flag => true, :enabled => true},
  {:id => 1201, :name => 'デザイン', :region => 1, :category_id => 1200, :default_flag => true, :enabled => true},
  {:id => 1202, :name => 'フロントエンド', :region => 1, :category_id => 1200, :default_flag => true, :enabled => true},
  {:id => 1301, :name => 'テックブログ（企業）', :region => 1, :category_id => 1300, :default_flag => true, :enabled => true},
  {:id => 1302, :name => 'テックブログ（個人）', :region => 1, :category_id => 1300, :default_flag => true, :enabled => true},
  {:id => 1303, :name => 'デザインブログ（企業）', :region => 1, :category_id => 1300, :default_flag => true, :enabled => true},
  {:id => 1304, :name => 'デザインブログ（個人）', :region => 1, :category_id => 1300, :default_flag => true, :enabled => true},
  {:id => 1401, :name => 'Github Release', :region => 1, :category_id => 1400, :default_flag => false, :enabled => true},
  {:id => 1402, :name => 'Github Trend', :region => 1, :category_id => 1400, :default_flag => false, :enabled => true},
  {:id => 1999, :name => '一般', :region => 1, :category_id => 1999, :default_flag => true, :enabled => true},
])

Site.first_or_create([
  {:id => 1, :name => 'はてぶ IT Entry', :channel_id => 1001, :url => 'http://b.hatena.ne.jp/entrylist/it.rss'},
  {:id => 2, :name => 'TechCrunch Japan', :channel_id => 1001, :url => 'http://jp.techcrunch.com/feed/'},
  {:id => 3, :name => 'TECHABLE', :channel_id => 1001, :url => 'http://techable.jp/feed/'},
  {:id => 4, :name => 'GIGAZINE', :channel_id => 1001, :url => 'http://feed.rssad.jp/rss/gigazine/rss_1.0'},
  {:id => 5, :name => 'OSSNEWS', :channel_id => 1001, :url => 'http://www.ossnews.jp/oss_info/atom.xml'},
  {:id => 6, :name => 'scan.netsecurity', :channel_id => 1004, :url => 'http://scan.netsecurity.ne.jp/rss/index.rdf'},
  {:id => 7, :name => 'トレンドマイクロ セキュリティブログ', :channel_id => 1004, :url => 'http://feeds.trendmicro.com/TM-SecurityBlog?format=xml'},
  {:id => 8, :name => 'クックパッド開発者ブログ', :channel_id => 1301, :url => 'http://techlife.cookpad.com/feed'},
  {:id => 9, :name => 'Hatena::Engineering', :channel_id => 1301, :url => 'http://d.hatena.ne.jp/hatenatech/rss'},
  {:id => 10, :name => 'サイバーエージェント 公式エンジニアブログ', :channel_id => 1301, :url => 'http://rssblog.ameba.jp/principia-ca/rss20.xml'},
  {:id => 11, :name => 'Release notes from rails', :channel_id => 401, :url => 'https://github.com/rails/rails/releases.atom'},
  {:id => 12, :name => 'Release notes from phoenix', :channel_id => 401, :url => 'https://github.com/phoenixframework/phoenix/releases.atom'},
  {:id => 13, :name => 'GitHub Trends - Ruby - Daily', :channel_id => 402, :url => 'http://github-trends.ryotarai.info/rss/github_trends_ruby_daily.rss'},
  {:id => 14, :name => 'GitHub Trends - Go - Daily', :channel_id => 402, :url => 'http://github-trends.ryotarai.info/rss/github_trends_go_daily.rss'},
  {:id => 15, :name => 'GitHub Trends - Elixir - Daily', :channel_id => 402, :url => 'http://github-trends.ryotarai.info/rss/github_trends_elixir_daily.rss'},
  {:id => 16, :name => 'Google Top News', :channel_id => 1999, :url => 'http://news.google.com/news?hl=ja&ned=us&ie=UTF-8&oe=UTF-8&output=rss&num=5'},
  {:id => 17, :name => 'Google ホーチミン News', :channel_id => 1999, :url => 'http://news.google.com/news?ned=us&ie=UTF-8&oe=UTF-8&q=%E3%83%9B%E3%83%BC%E3%83%81%E3%83%9F%E3%83%B3&output=rss&num=5&hl=ja'},
  {:id => 18, :name => 'POSTD', :channel_id => 1003, :url => 'http://postd.cc/feed/'},
  {:id => 19, :name => 'InfoQ', :channel_id => 3, :url => 'https://www.infoq.com/feed'},
  {:id => 20, :name => 'CodeZine', :channel_id => 1003, :url => 'http://rss.rssad.jp/rss/codezine/new/20/index.xml'},
  {:id => 21, :name => 'Hacker News', :channel_id => 3, :url => 'https://news.ycombinator.com/rss'},
  {:id => 22, :name => 'Release notes from rails', :channel_id => 1401, :url => 'https://github.com/rails/rails/releases.atom'},
  {:id => 23, :name => 'Release notes from phoenix', :channel_id => 1401, :url => 'https://github.com/phoenixframework/phoenix/releases.atom'},
  {:id => 24, :name => 'GitHub Trends - Ruby - Daily', :channel_id => 1402, :url => 'http://github-trends.ryotarai.info/rss/github_trends_ruby_daily.rss'},
  {:id => 25, :name => 'GitHub Trends - Go - Daily', :channel_id => 1402, :url => 'http://github-trends.ryotarai.info/rss/github_trends_go_daily.rss'},
  {:id => 26, :name => 'GitHub Trends - Elixir - Daily', :channel_id => 1402, :url => 'http://github-trends.ryotarai.info/rss/github_trends_elixir_daily.rss'},
  {:id => 27, :name => 'Google Japan Blog', :channel_id => 1301, :url => 'http://feeds.feedburner.com/GoogleJapanBlog'},
  {:id => 28, :name => 'Google Developers Japan', :channel_id => 1301, :url => 'http://feeds.feedburner.com/GoogleJapanDeveloperRelationsBlog'},
  {:id => 29, :name => 'コリス', :channel_id => 1201, :url => 'http://coliss.com/feed/'},
  {:id => 30, :name => 'Webクリエイターボックス', :channel_id => 1201, :url => 'http://www.webcreatorbox.com/feed/'},
  {:id => 31, :name => 'WWW WATCH', :channel_id => 1201, :url => 'http://feeds.feedburner.com/wacth'},
  {:id => 32, :name => 'PhotoshopVIP', :channel_id => 1201, :url => 'http://photoshopvip.net/feed'},
  {:id => 33, :name => 'html5experts.jp', :channel_id => 1202, :url => 'https://html5experts.jp/feed'},
  {:id => 34, :name => 'Web Design KOJIKA17', :channel_id => 1304, :url => 'http://kojika17.com/blog.atom'},
  {:id => 35, :name => 'Developers.IO', :channel_id => 1003, :url => 'http://dev.classmethod.jp/feed/'},
  {:id => 36, :name => 'Developers.IO クライアントサイド', :channel_id => 1202, :url => 'http://dev.classmethod.jp/category/client-side/feed/'},
  {:id => 37, :name => 'Webpark', :channel_id => 1304, :url => 'http://feeds2.feedburner.com/letsfc2'},
  {:id => 38, :name => 'CodeIQ', :channel_id => 1003, :url => 'https://codeiq.jp/magazine/feed/'},
  {:id => 39, :name => 'MOONGIFT', :channel_id => 1001, :url => 'http://feeds.feedburner.com/moongift'},
  {:id => 40, :name => 'InfoQ', :channel_id => 1003, :url => 'https://www.infoq.com/jp/feed'},
])

