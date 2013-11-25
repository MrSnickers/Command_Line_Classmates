### SCRAPER TEST



require '../lib/scraper.rb'


my_scraper = Scraper.new("http://flatironschool-bk.herokuapp.com/")

describe Scraper do
    describe "#initialize" do
        it "should be initialized with an HTML document" do
            expect(my_scraper.html).to_not eq(nil)
        end
        it "should get an array of 28 names" do
            expect(my_scraper.get_students_names.length).to eq(28)
        end
        it "should get an array of 28 blogs" do
            expect(my_scraper.get_students_blogs.length).to eq(28)
        end 
        it "should get an array of 28 Twitter handles" do
            expect(my_scraper.get_students_twitters.length).to eq(28)
        end

    end
end