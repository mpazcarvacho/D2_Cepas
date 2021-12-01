class Wine < ApplicationRecord
  has_many :wines_strains
  has_many :strains, through: :wines_strains, dependent: :destroy
  accepts_nested_attributes_for :wines_strains, allow_destroy: true
  validates :name, presence: true
  validates_associated :wines_strains
  
  # DONE add validation so percentages add up to 100. disabled
  # validates_with WineValidator
  
  # DONE relationships with scores
  has_many :scores
  has_many :oenologists, through: :scores, dependent: :destroy
  accepts_nested_attributes_for :scores, allow_destroy: true
  

end
