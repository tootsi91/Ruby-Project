require 'rubygems'
require 'nokogiri'
require 'open-uri'
   
page = Nokogiri::HTML(open("http://ruby.bastardsbook.com/files/hello-webpage.html"))   

#puts page.class   # => Nokogiri::HTML::Document

links = page.css("a")
puts links[0].text   # => Click here
puts links[0]["href"] # => http://www.google.com

#puts page.css("title")[0].name   # => title
#puts page.css("title")[0].text   # => My webpage


