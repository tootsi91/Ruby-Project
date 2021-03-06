require 'open-uri'
require 'nokogiri'
require 'json'


url = 'http://www.err.ee/uudised'
html = open(url)

doc = Nokogiri::HTML(html)
showings = []
doc.css('news-lead-font news-article').each do |title|
  #showing_id = showing['id'].split('_').last.to_i
  #tags = showing.css('.tags a').map { |tag| tag.text.strip }
  #title_el = showing.at_css('h1 a')
  #title_el.children.each { |c| c.remove if c.name == 'span' }
  #title = title_el.text.strip
  title = showing.at_css('news-lead-font news-article')
  dates = showing.at_css('time-font news-time').inner_html.strip
  #dates = dates.split('<br>').map(&:strip).map { |d| DateTime.parse(d) }
  #description = showing.at_css('.copy').text.gsub('[more...]', '').strip
  showings.push(
    #id: showing_id,
    title: title,
    #tags: tags,
    dates: dates,
    #description: description
  )
end

puts JSON.pretty_generate(showings)

