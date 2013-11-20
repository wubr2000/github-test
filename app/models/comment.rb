class Comment < ActiveRecord::Base
  belongs_to :post_item
end
