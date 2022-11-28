class ResultatCommune < ApplicationRecord
  belongs_to :scrutin
  belongs_to :commune
end
