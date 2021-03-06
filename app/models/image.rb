class Image < ApplicationRecord
  has_attached_file :image_file, :styles => { :medium => "300x300>", :thumb => "100x100#" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image_file, :content_type => /\Aimage\/.*\Z/

  has_many :collections
  has_many :users, :through => :collections
  has_many :tags
  has_many :keywords, :through => :tags
end
