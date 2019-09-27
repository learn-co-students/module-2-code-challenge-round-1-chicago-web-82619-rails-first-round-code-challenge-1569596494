class Heroine < ApplicationRecord
  belongs_to :power

  validates :name, :power_id, presence:true
  validates :super_name, presence: true, uniqueness: true
end
