class Post < ActiveRecord::Base

	validates :type_name, :presence => true
	validates :title, :presence => true
	validates :content, :presence => true

	belongs_to :board, counter_cache: :posts_count
	has_many :comments, :dependent => :destroy

end
