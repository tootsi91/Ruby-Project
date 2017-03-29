require 'rubygems'
require 'nokogiri'
require 'open-uri'
   
page = Nokogiri::HTML(open("http://www.err.ee/uudised"))   

links = page.css("div.news-row a");
time = page.css("div.time-font.news-time")
#links = page.css("div.container div.real-fp-container div.right-block div.list-item-node.mb52.r-blocks.automatic-blockframe div.block-frame.block-frame-default.margin-button.article-margin div.container-element.no-margin div.block-frame div.table-list-row.itemlist div.table-list-cell.news-list-item.article div.news_row a")

#time = page.css("div.container div.real-fp-container div.right-block div.list-item-node.mb52.r-blocks.automatic-blockframe div.block-frame.block-frame-default.margin-button.article-margin div.container-element.no-margin div.block-frame div.table-list-row.itemlist div.table-list-cell.news-list-item.article div.news_row div.time-font.news-time")


#links = page.css("a")
puts time[0].text
puts links[0].text
puts links[0]["href"]
#puts time.text
#puts time[0]
