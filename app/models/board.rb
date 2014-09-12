class Board < ActiveRecord::Base
  has_many :posts, :dependent => :destroy
  has_many :comments, through: :posts, :dependent => :destroy
  validates :name, :presence => true
  validates :description, :presence => true
end
