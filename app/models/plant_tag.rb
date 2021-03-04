class PlantTag < ApplicationRecord
  belongs_to :plant
  belongs_to :tag

  validates :plant, uniqueness: { scope: :tag }

  # def garden
  #   self.plant.garden
  # end
end
