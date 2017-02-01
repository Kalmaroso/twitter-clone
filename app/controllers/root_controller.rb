class RootController < ApplicationController
  def index
    @entries = Entry.all
    @entry = Entry.new
    5.times{@entry.tags.build}
    @entrytags = @entry.entrytags
    @tags = @entry.tags
  end
end
