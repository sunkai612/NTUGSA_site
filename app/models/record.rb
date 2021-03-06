class Record < ActiveRecord::Base
  belongs_to :organization

  validates :title, :presence => true, length: { in: 1..10 }
  validates :description, length: { maximum: 17 }
  validates :organization_id, :presence => true, length: { in: 1..11 }
  validates :date, :presence => true
  validates :location, :presence => true, length: { in: 1..14 }
  validates :content, :presence => true, length: { minimum: 20 }
  # validates :sign_up, :presence => true

  has_attached_file :image_large, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image_large, :content_type => /\Aimage\/.*\Z/
  has_attached_file :image_small, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image_small, :content_type => /\Aimage\/.*\Z/
  has_attached_file :file, :styles => { :medium => "300x300>", :thumb => ["100x100>", :jpg] }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :file, :content_type => "application/pdf"
  validates :image_small, :attachment_presence => true
  validates :image_large, :attachment_presence => true

end
