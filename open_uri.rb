require 'rubygems'
require 'nokogiri'
require 'open-uri'
   
page = Nokogiri::HTML(open("http://www.err.ee/uudised"))   

#puts page.class   # => Nokogiri::HTML::Document

links = page.css("a")
puts links.text   # => Click here
puts links["href"] # => http://www.google.com

#puts page.css("title")[0].name   # => title
#puts page.css("title")[0].text   # => My webpage


