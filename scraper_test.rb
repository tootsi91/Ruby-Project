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

puts time[2].text
puts title[2].text
puts link[2]["href"]

puts time[3].text
puts title[3].text
puts link[3]["href"]

puts time[4].text
puts title[4].text
puts link[4]["href"]

puts time[5].text
puts title[5].text
puts link[5]["href"]

puts time[6].text
puts title[6].text
puts link[6]["href"]

puts time[7].text
puts title[7].text
puts link[7]["href"]

puts time[8].text
puts title[8].text
puts link[8]["href"]

puts time[9].text
puts title[9].text
puts link[9]["href"]

puts time[10].text
puts title[10].text
puts link[10]["href"]

puts time[11].text
puts title[11].text
puts link[11]["href"]

puts time[12].text
puts title[12].text
puts link[12]["href"]

puts time[13].text
puts title[13].text
puts link[13]["href"]

puts time[14].text
puts title[14].text
puts link[14]["href"]


