class Heroine < ApplicationRecord
  validates_uniqueness_of :super_name, message: "must be unique"
  belongs_to :power

end
