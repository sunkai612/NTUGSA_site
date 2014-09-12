class Post < ActiveRecord::Base

	validates :author, :presence => true, length: { in: 2..9 }
	validates :type_name, :presence => true, length: { is: 2 }
	validates :title, :presence => true, length: { in: 4..20 }
	validates :content, :presence => true, length: { minimum: 20 }

	belongs_to :board, counter_cache: :posts_count
	has_many :comments, :dependent => :destroy

end
