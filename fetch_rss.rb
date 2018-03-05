require "rss"
url = "https://news.yahoo.co.jp/pickup/computer/rss.xml"
rss = RSS::Parser.parse(url)

puts rss.channel.title
puts rss.channel.description

rss.channel.items.each do|item|
  puts item.title
  puts item.link
  puts item.pubDate
end
