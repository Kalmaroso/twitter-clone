class Entry < ApplicationRecord
  belongs_to :user
  has_many :entrytags
  has_many :tags, through: :entrytags
end
