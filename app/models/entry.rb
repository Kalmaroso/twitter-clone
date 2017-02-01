class Entry < ApplicationRecord
  belongs_to :user
  has_many :entrytags
  has_many :tags, through: :entrytags

  accepts_nested_attributes_for :tags, reject_if: :all_blank
end
