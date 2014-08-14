class Post < ActiveRecord::Base

	belongs_to :board, counter_cache: :posts_count
	has_many :comments

end
