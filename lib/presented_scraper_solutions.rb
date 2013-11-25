require 'open-uri'
require 'nokogiri'

class Scraper
attr_reader :html

def initialize(url)
  download = open( url)
  @html = Nokogiri::HTML(download)
end

def get_students_names
  html.search("h3").collect {|item| item.text}
end

def get_students_Twitter
  all_the_twitter =[]
  html.search(".back").each do |class_node|
    if class_node.search(".twitter").text.split[0].nil?
    all_the_twitter << "none"
  else
    all_the_twitter <<
  end
  all_the_twitter << class_node.search(".twitter").text.split[0]
end

def get_students_blogs
   html.search(".blog @href").collect {|anchor| anchor.text}
end


end

my_scraper = Scraper.new("http://flatironschool-bk.herokuapp.com/")
puts my_scraper.get_students_names

 def better_get_blog
blog_url = []
html.search("ul.social").each do |social_div|
  if social_div.search("a.blog").text == "Blog"
    blog_url << social_div.search("a. blog")[0]["href"]
  else
    blog_url << "none"
  end
end
blog_url
end