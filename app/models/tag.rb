class Tag < ActiveRecord::Base
  attr_accessible :post, :tag, :post_ref
  belongs_to :post
end
