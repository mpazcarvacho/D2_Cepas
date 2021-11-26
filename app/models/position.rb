class Position < ApplicationRecord
  belongs_to :Oenologist
  belongs_to :Magazine
  belongs_to :Job
  # serialize : position, Array
  # after_initialize -> { self. position.blank? ? self. position.push('xyz') : self. position }
end
