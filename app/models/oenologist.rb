class Oenologist < ApplicationRecord
  has_many :positions
  has_many :magazines, through: :positions, dependent: :destroy
  has_many :positions
  has_many :jobs, through: :positions, dependent: :destroy
  has_many :scores
  has_many :wines, through: :scores, dependent: :destroy
end
