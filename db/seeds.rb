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
  {:id => 2, :name => 'Gadget News', :region => 0, :category_id => 1, :default_flag => true, :enabled => true},
  {:id => 3, :name => 'Develop News', :region => 0, :category_id => 1, :default_flag => true, :enabled => true},
  {:id => 4, :name => 'Security News', :region => 0, :category_id => 1, :default_flag => true, :enabled => true},
  {:id => 201, :name => 'Design News', :region => 0, :category_id => 200, :default_flag => true, :enabled => true},
  {:id => 202, :name => 'Frontend News', :region => 0, :category_id => 200, :default_flag => true, :enabled => true},
  {:id => 301, :name => 'Tech Blog', :region => 0, :category_id => 300, :default_flag => true, :enabled => true},
  {:id => 303, :name => 'Design Blog', :region => 0, :category_id => 300, :default_flag => true, :enabled => true},
  {:id => 401, :name => 'Github Release', :region => 0, :category_id => 400, :default_flag => true, :enabled => true},
  {:id => 402, :name => 'Github Trend', :region => 0, :category_id => 400, :default_flag => true, :enabled => true},
  {:id => 999, :name => 'General News', :region => 0, :category_id => 999, :default_flag => true, :enabled => true},
  {:id => 1001, :name => 'テック', :region => 1, :category_id => 1000, :default_flag => true, :enabled => true},
  {:id => 1002, :name => 'ガジェット', :region => 1, :category_id => 1000, :default_flag => true, :enabled => true},
  {:id => 1003, :name => 'デベロップ', :region => 1, :category_id => 1000, :default_flag => true, :enabled => true},
  {:id => 1004, :name => 'セキュリティ', :region => 1, :category_id => 1000, :default_flag => true, :enabled => true},
  {:id => 1201, :name => 'デザイン', :region => 1, :category_id => 1200, :default_flag => true, :enabled => true},
  {:id => 1202, :name => 'フロントエンド', :region => 1, :category_id => 1200, :default_flag => true, :enabled => true},
  {:id => 1301, :name => 'テックブログ', :region => 1, :category_id => 1300, :default_flag => true, :enabled => true},
  {:id => 1303, :name => 'デザインブログ', :region => 1, :category_id => 1300, :default_flag => true, :enabled => true},
  {:id => 1401, :name => 'Github Release', :region => 1, :category_id => 1400, :default_flag => true, :enabled => true},
  {:id => 1402, :name => 'Github Trend', :region => 1, :category_id => 1400, :default_flag => true, :enabled => true},
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
  {:id => 28, :name => 'Google Developers Japan', :channel_id => 1301, :url => 'http://feeds.feedburner.com/GoogleJapanDeveloperRelationsBlog'},
  {:id => 29, :name => 'コリス', :channel_id => 1201, :url => 'http://coliss.com/feed/'},
  {:id => 30, :name => 'Webクリエイターボックス', :channel_id => 1201, :url => 'http://www.webcreatorbox.com/feed/'},
  {:id => 31, :name => 'WWW WATCH', :channel_id => 1201, :url => 'http://feeds.feedburner.com/wacth'},
  {:id => 32, :name => 'PhotoshopVIP', :channel_id => 1201, :url => 'http://photoshopvip.net/feed'},
  {:id => 33, :name => 'html5experts.jp', :channel_id => 1202, :url => 'https://html5experts.jp/feed'},
  {:id => 34, :name => 'Web Design KOJIKA17', :channel_id => 1303, :url => 'http://kojika17.com/blog.atom'},
  {:id => 35, :name => 'Developers.IO', :channel_id => 1003, :url => 'http://dev.classmethod.jp/feed/'},
  {:id => 36, :name => 'Developers.IO クライアントサイド', :channel_id => 1202, :url => 'http://dev.classmethod.jp/category/client-side/feed/'},
  {:id => 37, :name => 'Webpark', :channel_id => 1303, :url => 'http://feeds2.feedburner.com/letsfc2'},
  {:id => 38, :name => 'CodeIQ', :channel_id => 1003, :url => 'https://codeiq.jp/magazine/feed/'},
  {:id => 39, :name => 'MOONGIFT', :channel_id => 1001, :url => 'http://feeds.feedburner.com/moongift'},
  {:id => 40, :name => 'InfoQ', :channel_id => 1003, :url => 'https://www.infoq.com/jp/feed'},
  {:id => 41, :name => '＠IT HTML5 + UXフォーラム', :channel_id => 1202, :url => 'http://rss.rssad.jp/rss/itmatmarkit/fwcr/rss.xml'},
  {:id => 42, :name => '＠IT Security&Trustフォーラム', :channel_id => 1004, :url => 'http://rss.rssad.jp/rss/itmatmarkitsecurity/fsecurity/rss.xml'},
  {:id => 43, :name => '＠IT Coding Edgeフォーラム', :channel_id => 1003, :url => 'http://rss.rssad.jp/rss/itmatmarkit/fcoding/rss.xml'},
  {:id => 44, :name => 'W3C News', :channel_id => 202, :url => 'https://www.w3.org/blog/news/feed'},
  {:id => 45, :name => 'Awwwards', :channel_id => 201, :url => 'http://feeds.feedburner.com/awwwards-sites-of-the-day'},
  {:id => 46, :name => 'CSS-Tricks', :channel_id => 202, :url => 'http://feeds.feedburner.com/CssTricks'},
  {:id => 47, :name => 'JavaScript.com', :channel_id => 202, :url => 'https://www.javascript.com/feed/rss'},
  {:id => 48, :name => 'NEWS.JS.ORG', :channel_id => 202, :url => 'https://news.js.org/feed/'},
  {:id => 49, :name => 'CSS Drive News', :channel_id => 202, :url => 'http://www.cssdrive.com/index.php/news/rss_2.0/'},
  {:id => 50, :name => 'WebdesignerNews', :channel_id => 201, :url => 'http://feeds.feedburner.com/webdesignernews'},
  {:id => 51, :name => 'Smashing Magazine', :channel_id => 202, :url => 'https://www.smashingmagazine.com/feed/'},
  {:id => 52, :name => 'Webdesigner Depot', :channel_id => 201, :url => 'http://feeds2.feedburner.com/webdesignerdepot?format=html'},
  {:id => 53, :name => 'HOW Design', :channel_id => 201, :url => 'http://www.howdesign.com/feed/'},
  {:id => 54, :name => 'Designer News', :channel_id => 201, :url => 'https://www.designernews.co/?format=rss'},
  {:id => 55, :name => 'ReactJS News', :channel_id => 202, :url => 'https://reactjsnews.com/feed'},
  {:id => 56, :name => 'Mercari Engineering Blog', :channel_id => 1301, :url => 'http://tech.mercari.com/rss'},
  {:id => 57, :name => 'さくらのナレッジ', :channel_id => 1301, :url => 'http://knowledge.sakura.ad.jp/feed/'},
  {:id => 58, :name => 'インフラエンジニアway', :channel_id => 1301, :url => 'http://heartbeats.jp/hbblog/atom.xml'},
  {:id => 59, :name => 'DSAS開発者の部屋', :channel_id => 1301, :url => 'http://dsas.blog.klab.org/index.rdf'},
  {:id => 60, :name => 'VOYAGE GROUP techlog', :channel_id => 1301, :url => 'http://techlog.voyagegroup.com/rss'},
  {:id => 61, :name => "LINE Engineer's Blog", :channel_id => 1301, :url => 'http://developers.linecorp.com/blog/ja/?feed=rss2'},
  {:id => 62, :name => 'Mobage Developers Blog', :channel_id => 1301, :url => 'http://developers.mobage.jp/blog/?format=rss'},
  {:id => 63, :name => "GREE Engineer's Blog", :channel_id => 1301, :url => 'http://labs.gree.jp/blog/feed/'},
  {:id => 64, :name => "mixi engineer blog", :channel_id => 1301, :url => 'http://alpha.mixi.co.jp/rss'},
  {:id => 65, :name => "Septeni Engineer's Blog", :channel_id => 1301, :url => 'http://labs.septeni.co.jp/rss'},
  {:id => 66, :name => "GMOメディア", :channel_id => 1301, :url => 'http://tech.gmo-media.jp/rss'},
  {:id => 67, :name => "ヌーラボ", :channel_id => 1301, :url => 'http://nulab-inc.com/ja/feed/'},
  {:id => 68, :name => "シナジーマーケティング（TECH SCORE）", :channel_id => 1301, :url => 'http://www.techscore.com/blog/feed/'},
  {:id => 69, :name => "nanapi TechBlog", :channel_id => 1301, :url => 'http://blog.nanapi.co.jp/tech/feed/'},
  {:id => 70, :name => "Yahoo! JAPAN Tech Blog", :channel_id => 1301, :url => 'http://techblog.yahoo.co.jp/atom.xml'},
  {:id => 71, :name => "VASILY DEVELOPERS BLOG", :channel_id => 1301, :url => 'http://tech.vasily.jp/rss'},
  {:id => 72, :name => "Qiita Blog", :channel_id => 1301, :url => 'http://blog.qiita.com/rss'},
  {:id => 73, :name => "dwango エンジニアブロマガ", :channel_id => 1301, :url => 'http://ch.nicovideo.jp/dwango-engineer/blomaga/nico/feed'},
  {:id => 74, :name => "マネーフォワード エンジニアブログ", :channel_id => 1301, :url => 'https://moneyforward.com/engineers_blog/feed/'},
  {:id => 75, :name => "SmartNews 開発者ブログ", :channel_id => 1301, :url => 'http://developer.smartnews.com/blog/feed/'},
  {:id => 76, :name => "eureka tech blog", :channel_id => 1301, :url => 'https://developers.eure.jp/feed/'},
  {:id => 77, :name => "UZABASE Tech Blog", :channel_id => 1301, :url => 'http://tech.uzabase.com/rss'},
  {:id => 78, :name => "Dropbox Tech Blog", :channel_id => 301, :url => 'https://blogs.dropbox.com/tech/feed/'},
  {:id => 79, :name => "Evernote Tech Blog", :channel_id => 301, :url => 'http://blog.evernote.com/tech/feed/'},
  {:id => 80, :name => "Twitter", :channel_id => 301, :url => 'https://blog.twitter.com/api/blog.rss?name=engineering'},
  {:id => 81, :name => "Facebook Code", :channel_id => 301, :url => 'https://code.facebook.com/posts/rss'},
  {:id => 82, :name => "Tumblr Engineering", :channel_id => 301, :url => 'https://engineering.tumblr.com/rss'},
  {:id => 83, :name => "Pinterest Engineering Blog", :channel_id => 301, :url => 'https://engineering.pinterest.com/blog/rss'},
  {:id => 84, :name => "The GitHub Blog", :channel_id => 301, :url => 'https://github.com/blog/engineering.atom'},
  {:id => 85, :name => "airbnb", :channel_id => 301, :url => 'http://nerds.airbnb.com/feed/'},
  {:id => 86, :name => "Spotify", :channel_id => 301, :url => 'https://labs.spotify.com/feed/'},
  {:id => 87, :name => "Netflix", :channel_id => 301, :url => 'http://techblog.netflix.com/rss.xml'},
  {:id => 88, :name => "Uber Engineering Blog", :channel_id => 301, :url => 'http://eng.uber.com/feed/'},
  {:id => 89, :name => "Zillow Engineering", :channel_id => 301, :url => 'https://engineering.zillow.com/feed/'},
  {:id => 90, :name => "Chef Blog", :channel_id => 301, :url => 'https://blog.chef.io/feed/'},
  {:id => 91, :name => "Docker Blog", :channel_id => 301, :url => 'https://blog.docker.com/category/engineering/feed/'},
  {:id => 92, :name => "Indeed Engineering Blog", :channel_id => 301, :url => 'http://engineering.indeedblog.com/blog/feed/'},
  {:id => 93, :name => "Engineering @ Microsoft", :channel_id => 301, :url => 'https://engineering.microsoft.com/feed/'},
  {:id => 94, :name => "Slack Engineering Blog", :channel_id => 301, :url => 'https://slack.engineering/feed'},
  {:id => 95, :name => "Google Developers Blog", :channel_id => 301, :url => 'http://feeds.feedburner.com/GDBcode'},
  {:id => 96, :name => "AWS Blog", :channel_id => 301, :url => 'http://feeds.feedburner.com/AmazonWebServicesBlog'},
])

