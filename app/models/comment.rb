class Comment < ActiveRecord::Base

	validates :commenter, :presence => true, length: { in: 2..15 }
	validates :content, :presence => true, length: {maximum: 50}

	belongs_to :post, counter_cache: :comments_count

end
