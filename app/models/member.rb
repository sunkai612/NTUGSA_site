class Member < ActiveRecord::Base
  belongs_to :organization

  validates :name, :presence => true, length: { in: 1..10 }
  validates :intro, :presence => true, length: { minimum: 20 }

  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  validates :name, :presence => true
  validates :intro, :presence => true
  validates :organization_id, :presence => true
end
