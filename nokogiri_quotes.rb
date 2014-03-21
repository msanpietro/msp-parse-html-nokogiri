require "rubygems"
require "nokogiri"
require "open-uri"

## Add code to read the stock symbols from a file 


URL1 = 'http://finance.yahoo.com/q?s=AAPL'
content1 = open(URL1)
doc1 = Nokogiri::HTML(content1)
puts "The class these docs belong to is ==> #{doc1.class}"   # => Nokogiri::HTML::Document
puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

## AAPL 
puts "Looking up #{URL1}"
# Find the span tag with the class attribute "time_rtq_ticker" and then print its inner text
puts "AAPL ==> #{doc1.css("span.time_rtq_ticker span").inner_text}"


#MSFT
URL2 = 'http://finance.yahoo.com/q?s=MSFT'
content2 = open(URL2)
doc2 = Nokogiri::HTML(content2)
puts "Looking up #{URL2}"
puts "MSFT ==> #{doc2.css("span.time_rtq_ticker span").inner_text}"


#VRSN
URL3 = 'http://finance.yahoo.com/q?s=VRSN'
content3 = open(URL3)
doc3 = Nokogiri::HTML(content3)
puts "Looking up #{URL3}"
puts "VRSN ==> #{doc3.css("span.time_rtq_ticker span").inner_text}"

