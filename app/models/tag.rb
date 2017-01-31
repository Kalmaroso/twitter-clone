class Tag < ApplicationRecord
  has_many :entrytags
  has_many :entries, through: :entrytags
end
