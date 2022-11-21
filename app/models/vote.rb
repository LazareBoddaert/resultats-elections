class Vote < ApplicationRecord
  belongs_to :scrutin
  belongs_to :commune
end
