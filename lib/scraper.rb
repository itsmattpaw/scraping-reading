require 'nokogiri'
require 'open-uri'

#html = URI.open("https://flatironschool.com/")
#doc = Nokogiri::HTML5(html)
#puts doc
#p doc.css(".heading-40-semibold.color-black.mb-20").text

html = URI.open("https://www.havertys.com/furniture/allstores")
doc2 = Nokogiri::HTML5(html)
#puts doc
stores = doc2.css(".storeDetails").css("span")
stores.each do |location|
    puts location.text.strip
end
