class Power < ApplicationRecord
  # Multiple heroines can have the same power.
  has_many :heroines
end
