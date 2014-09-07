class Organization < ActiveRecord::Base
  has_many :members, :dependent => :destroy 
  has_many :records, :dependent => :destroy 
end
