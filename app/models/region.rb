class Region < ApplicationRecord
  has_many :departements
  belongs_to :nation
end
