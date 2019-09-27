class Heroine < ApplicationRecord
    belongs_to :power

    validates :super_name, presence: true, uniqueness: true
    validates :name, presence: true
end
