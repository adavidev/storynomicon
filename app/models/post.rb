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
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, extensions = {})
    crosscheck
    output = content
    tags.each do |tag|
      output.sub!(tag.tag, "[#{tag.tag}](/posts/#{tag.post_ref})")
    end
    markdown.render output
  end
end
