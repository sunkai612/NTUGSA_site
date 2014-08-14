class Comment < ActiveRecord::Base

	belongs_to :posts, counter_cache: :comments_count

end
