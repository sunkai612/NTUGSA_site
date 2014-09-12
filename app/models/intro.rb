class Intro < ActiveRecord::Base

  validates :title, :presence => true, length: { in: 1..10 }

  validates :title, :presence => true
  validates :content, :presence => true
end
