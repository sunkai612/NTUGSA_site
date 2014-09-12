class Organization < ActiveRecord::Base
  has_many :members, :dependent => :destroy 
  has_many :records, :dependent => :destroy 
  validates :title, :presence => true
  validates :content, :presence => true
end
