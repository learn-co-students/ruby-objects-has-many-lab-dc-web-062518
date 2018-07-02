class Author

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @posts = []
  end

  def posts
    @posts
  end

  def add_post(post)
    # binding.pry
    post.author = self
    @posts << post
    @@all << post
  end

  def add_post_by_title(post_title)
    post = Post.new(post_title)
    post.author = self
    self.posts << post
    @@all << post_title
  end

  def self.post_count
    @@all.length
  end
end
