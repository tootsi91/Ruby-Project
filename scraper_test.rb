require 'rubygems'
require 'nokogiri'
require 'open-uri'
   

page = Nokogiri::HTML(open("http://www.err.ee/uudised"))   

links = page.css("div.news-row")
#time = page.css("div.time-font.news-time")
#title = page.css("div.news-row a");

links[0..-14].each do |link|

	hrefs = link.css("a href")
	
	puts hrefs

	text = link.css("a")	

	time = link.css("div.time-font.news-time")

	tandt = time + text

	puts tandt
end


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



