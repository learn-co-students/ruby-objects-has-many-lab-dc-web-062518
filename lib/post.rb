class Post

  attr_accessor :author
  attr_reader :title

  @@all = []

  def self.all
    @@all
  end

  def initialize(title)
    @title = title
    Post.all << self
  end

  def author_name
    if @author == nil
      nil
    else
      @author.name
    end
  end

end
