class Author

  @@all = []

  attr_accessor :name, :post

  def initialize(name)
    @name = name
    @posts = []
    @@all << self
  end

  def self.all
    @@all
  end

  def posts
    @posts
  end

  def add_post(post)
    post.author = self
    @posts << post 
    post
  end

  def add_post_by_title(title)
    post = Post.new(title)
    post.author = self
    @posts << post
    post
  end

  def self.post_count
    Post.all.count
  end

end
