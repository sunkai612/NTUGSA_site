class Statute < ActiveRecord::Base
  validates :content, :presence => true
end
