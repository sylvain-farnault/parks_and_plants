class Plant < ApplicationRecord
  belongs_to :garden
  has_many :plant_tags
  has_many :tags, through: :plant_tags

  validates :name, presence: true, length: { minimum: 3 }
  validates_format_of :image_url, with: /\.(png|jpg|jpeg)\z/i, message: "Bad format. Should be an image url!"

end
