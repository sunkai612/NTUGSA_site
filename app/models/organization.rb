class Organization < ActiveRecord::Base
  has_many :members, :dependent => :destroy 
  has_many :records, :dependent => :destroy 
  validates :title, :presence => true, length: { in: 1..10 }
  validates :content, :presence => true, length: { minimum: 20 }
end
