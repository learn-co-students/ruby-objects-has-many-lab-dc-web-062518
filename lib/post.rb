
class Post

attr_accessor :author, :title

@@all =[]

def initialize(title)
  @title = title
  @author = author
  @@all << self
end


def author
  @author
end

def title
  @title
end

def author_name
  if self.author
    self.author.name
  else
    # binding.pry
    self.author
  end

end











end
