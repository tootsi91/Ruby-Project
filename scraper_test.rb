require 'rubygems'
require 'nokogiri'
require 'open-uri'
   

page = Nokogiri::HTML(open("http://www.err.ee/uudised"))   

links = page.css("div.list-item-node.mb52.r-blocks.automatic-blockframe div.block-frame.block-frame-default.margin-bottom.article-margin div.container-element.no-margin div.block-frame div.table-list-row.itemlist div.table-list-cell.news-list-item.article div.news-row").map do |link|
       hrefs = link.css("a")

       text = link.css("a")    

       time = link.css("div.time-font.news-time")

       tandt = time + text

       puts tandt.text

       puts hrefs[0]["href"]
end



#time = page.css("div.time-font.news-time")
#title = page.css("div.news-row a");

#links[1..-3].each do |link|

#	hrefs = link.css("a")

#	text = link.css("a")	

#	time = link.css("div.time-font.news-time")

#	tandt = time + text

#	puts tandt.text

#	puts hrefs
#end


#links.each{|link| puts "#{link.text}\t#{link['href']}" }

#puts link.class

#title = page.css("div.news-row a");
#time = page.css("div.time-font.news-time");
#link = page.css("div.news-row a")

#puts time[0].text
#puts title[0].text
#puts link[0]["href"]

#puts time[1].text
#puts title[1].text
#puts link[1]["href"]



