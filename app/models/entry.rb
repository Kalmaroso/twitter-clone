class Entry < ApplicationRecord
  belongs_to :user
  has_many :entrytags
  has_many :tags, through: :entrytags

  accepts_nested_attributes_for :tags, reject_if: :all_blank

  # def autosave_associated_records_for_tag
  #     old_tag = Tag.find_by_name(tag.name)
  #    if old_tag
  #      Entrytag.create(entry_id: self.id, tag_id: old_tag.id)
  #    else
  #      self.tag.save!
  #    end
  # end
end
