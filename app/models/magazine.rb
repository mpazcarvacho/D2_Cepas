class Magazine < ApplicationRecord
  has_many :positions
  has_many :oenologists, through: :positions, dependent: :destroy
  has_many :positions
  has_many :jobs, through: :positions, dependent: :destroy
end
