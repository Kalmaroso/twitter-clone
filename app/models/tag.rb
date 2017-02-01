class Tag < ApplicationRecord
  has_many :entrytags
  has_many :entries, through: :entrytags

  def amount_of_entries
    self.entries.count
  end
end
