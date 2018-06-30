class Author
  @@all = []
  attr_accessor :name, :post
  def initialize (name)
    @name = name
    @@all << self
    @post = []
  end

  def self.all
    @@all
  end

  def posts
    @post
  end

  def add_post(post)
    @post << post
    post.author = self
  end

  def add_post_by_title(title)
    post = Post.new(title)
    @post << post
    post.author = self
  end

  def self.post_count
    counter=0
    @@all.each do |array|
      counter += array.post.count
    end
    counter
      #binding.pry
  end
end
