class Board < ActiveRecord::Base

	validates :title, :presence => true, length: { in: 1..10 }

	has_many :posts, :dependent => :destroy
	has_many :comments, through: :posts, :dependent => :destroy

end
