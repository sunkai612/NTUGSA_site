class Comment < ActiveRecord::Base

	validates :commenter, :presence => true
	validates :content, :presence => true

	belongs_to :post, counter_cache: :comments_count

end
