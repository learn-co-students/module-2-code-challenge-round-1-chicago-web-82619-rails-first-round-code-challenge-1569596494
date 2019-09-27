class Power < ApplicationRecord
  has_many :heroines, dependent: :destroy
end
