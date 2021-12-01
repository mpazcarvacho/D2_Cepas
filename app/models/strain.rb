class Strain < ApplicationRecord
  has_many :wines_strains
  has_many :wines, through: :wines_strains, dependent: :destroy

  # DONE Strain must not be nil, has to be unique and can't be blank 01/12
  validates :name, presence: true, uniqueness: true, allow_blank: false
end
