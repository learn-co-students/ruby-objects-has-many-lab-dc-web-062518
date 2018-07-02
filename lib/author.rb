class Author

  attr_accessor :name

  @@total_posts = []

  def initialize(name)
    @name = name
    @posts = []
  end

  def posts
    @posts
  end

  def add_post(post)
    @posts << post
    @@total_posts << post
    post.author = self
  end

  def add_post_by_title(post_title)
    post = Post.new(post_title)
    self.add_post(post)
  end

  def self.post_count
    @@total_posts.length
  end

end
