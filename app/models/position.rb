class Position < ApplicationRecord
  belongs_to :oenologist
  belongs_to :magazine
  belongs_to :job
  accepts_nested_attributes_for :job, allow_destroy: true
  accepts_nested_attributes_for :magazine, allow_destroy: true
  # serialize : position, Array
  # after_initialize -> { self. position.blank? ? self. position.push('xyz') : self. position }
end
