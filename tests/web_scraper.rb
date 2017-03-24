require 'httparty'
require 'nokogiri'
require 'json'
require 'pry'
require 'csv'

page = HTTParty.get('https://www.reddit.com/r/soccer/')

parse_page = Nokogiri::HTML(page)

barca_array = []

parse_page.css('listing-page hot-page').css('.content').css('spacer').css('sitetable linklisting').map do |a|
	post_name = a.text
	barca_array.push(post_name)
end

Pry.start(binding)

