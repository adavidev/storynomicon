class Tag < ActiveRecord::Base
  attr_accessible :post, :tag
  belongs_to :post
end
