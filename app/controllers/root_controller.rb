class RootController < ApplicationController
  def index
    @entries = Entry.all
    @tags = Tag.all

    
    @entry = Entry.new
    5.times{@entry.tags.build}
    @entrytags = @entry.entrytags
    @new_tags = @entry.tags
  end
end
