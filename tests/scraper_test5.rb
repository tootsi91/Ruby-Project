require 'rubygems'
require 'nokogiri'
require 'open-uri'
   
page = Nokogiri::HTML(open("http://www.err.ee/uudised"))   

title = page.css("div.news-row a");
time = page.css("div.time-font.news-time");
link = page.css("div.news-row a")

puts time[0].text
puts title[0].text
puts link[0]["href"]

puts time[1].text
puts title[1].text
puts link[1]["href"]



