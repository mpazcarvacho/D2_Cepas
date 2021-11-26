class Job < ApplicationRecord
  has_many :positions
  # has_many :magazines, through: :positions, dependent: :destroy
  # has_many :positions
  # has_many :oenologists, through: :positions, dependent: :destroy

end
