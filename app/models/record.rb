class Record < ActiveRecord::Base
  belongs_to :organization

  validates :title, :presence => true, length: { in: 1..10 }
  validates :descrpition, :presence => true, length: { maximim: 20 }
  validates :organization_id, :presence => true, length: { in: 1..14 }
  validates :date, :presence => true, numericality: { only_integer: true }, length: { in: 8..12 }
  validates :location, :presence => true, length: { in: 1..14 }
  validates :content, :presence => true, length: { minimum: 20 }
  # validates :sign_up, :presence => true
  # validates :image_large_file_name, :presence => true
  # validates :image_small_file_name, :presence => true

  has_attached_file :image_large, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image_large, :content_type => /\Aimage\/.*\Z/
  has_attached_file :image_small, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image_small, :content_type => /\Aimage\/.*\Z/
  has_attached_file :file, :styles => { :medium => "300x300>", :thumb => ["100x100>", :jpg] }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :file, :content_type => "application/pdf"
end
