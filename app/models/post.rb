class Post < ActiveRecord::Base
  attr_accessible :content, :title
  has_many :tags
  
  after_save :crosscheck
  
  def crosscheck
      Post.all.each do |post|
          Tag.where({:tag => post.title, :post_id => self}).first_or_create if ::Regexp.new(post.title) =~ self.content
      end
  end
  
  def content_with_references
      
  end
end
