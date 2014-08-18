class Comment < ActiveRecord::Base

	belongs_to :post, counter_cache: :comments_count

end
