class Author

  attr_accessor :name
  attr_reader :posts

  @@all = []

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @posts << post
    post.author = self
    @@all << post
  end

  def add_post_by_title(title)
    a = Post.new(title)
    @posts << a
    a.author = self
    @@all << a
  end

  def self.post_count
    @@all.length
  end


end
