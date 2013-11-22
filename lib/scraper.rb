require 'open-uri'
require 'nokogiri'

class Scraper
attr_reader :html

def initialize(url)
  download = open( url)
  @html = Nokogiri::HTML(download)
end

def get_students_Twitter
  things_with_at_signs = []
  students = @html.search("a").text.split(" ")
  students.each do |item|
    if item.to_s.match(/@/)
      things_with_at_signs << item
    end
  end
  return things_with_at_signs

end

def get_students_names
  students = html.search("h3").to_s.split("</h3><h3>")
  students[0]=students[0][4..-1]
  students[-1]=students[-1][0..-6]
return students
  end

  def get_students_blogs
   blogs = html.search(".blog").map {|link| link["href"]}


  end


end

my_scraper = Scraper.new("http://flatironschool-bk.herokuapp.com/")
puts my_scraper.get_students_blogs