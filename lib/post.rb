class Post

  attr_accessor :title, :author

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
    @author = author
  end

  def author_name
    @author
  end

  def author_name
    # binding.pry
    if self.author
      self.author.name
     else
       self.author
    end
  end

end
