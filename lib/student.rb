
class Student

  attr_reader :name
  attr_accessor :twitter, :blog

  def initialize(name, twitter, blog)
    @name = name
    @twitter = twitter
    @blog = blog
  end

end