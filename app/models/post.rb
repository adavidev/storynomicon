class Post < ActiveRecord::Base
  attr_accessible :content, :title
  has_many :tags
  
  after_save :crosscheck
  
  def crosscheck
      Post.all.each do |post|
          Tag.where({:tag => post.title, :post_id => self, :post_ref => post.id}).first_or_create if ::Regexp.new(post.title) =~ self.content
      end
  end
  
  def content_with_references
    crosscheck
    output = content
    tags.each do |tag|
      output.sub!(tag.tag, "<a href='http://localhost:3000/posts/#{tag.post_ref}'>#{tag.tag}</a>")
    end
    output
  end
end
