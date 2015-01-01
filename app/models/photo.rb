class Photo < ActiveRecord::Base
  belongs_to :image, :class_name => 'Image'

  validates_presence_of :name, :gallery_name

  has_friendly_id :gallery_name

  acts_as_indexed :fields => [:gallery_name]

  default_scope :order => "gallery_name DESC"

  alias_attribute :title, :name

end
