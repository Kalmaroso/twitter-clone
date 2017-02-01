class Entrytag < ApplicationRecord
  belongs_to :tag
  belongs_to :entry

  accepts_nested_attributes_for :tag
end
