require 'rubygems'
require 'nokogiri'
require 'open-uri'
   
page = Nokogiri::HTML(open("http://www.err.ee/uudised"))   

links = page.css("a")
#times = page.css("div.time-font_news-time")
#puts times
puts links.text
puts links[0]["href"]

#page.css('div_class#"time-font news-time"')
