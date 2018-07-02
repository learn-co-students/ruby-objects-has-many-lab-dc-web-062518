
require 'pry'
require "/Users/JohnDaise/Desktop/Flatiron/ruby-objects-has-many-lab-dc-web-062518/lib/post.rb"


class Author


attr_accessor :name, :posts, :post_count

@@all = []
def initialize(name)
  @name = name
  @posts = []
end

def self.all
  @@all
end

def name
  @name
end


def post
  @posts
end


def add_post(post)
  post.author = self
  @posts << post
  @@all << post
end

def add_post_by_title(post)
  # binding.pry
  a = Post.new(post)
  a.author = self
  self.posts << a
  @@all << post
end


def self.post_count
  @@all.length

end












end
