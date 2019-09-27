class Heroine < ApplicationRecord
  # A heroine has only one power.
  belongs_to :power
end
