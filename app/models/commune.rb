class Commune < ApplicationRecord
  belongs_to :departement
  has_many :votes
end
