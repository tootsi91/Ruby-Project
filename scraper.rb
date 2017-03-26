require 'rubygems'
require 'nokogiri'
require 'open-uri'
   
page = Nokogiri::HTML(open("http://www.err.ee/uudised"))   


links = page.css("a")
puts links.text
puts links[0]["href"]

#page.css('div_class#"time-font news-time"')
