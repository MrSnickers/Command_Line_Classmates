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

def get_students_blogs
  html.search(".student").collect do |student|
        if student.search(".blog").empty?
            "none"
        else
            student.search(".blog")[0]["href"]
        end
  end
end

def get_students_twitters
    html.search(".student").collect do |student|
        if student.search(".twitter").empty?
            "none"
        else
           student.search(".twitter")[0]["href"]
        end
    end
end



end