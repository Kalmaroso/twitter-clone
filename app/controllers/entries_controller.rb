class EntriesController < ApplicationController
  helper_method :entry_params



  def create
    @user = current_user
    @entry = @user.entries.build(entry_params)

    new_params = entry_params
    new_params[:tags_attributes].each do |name|
      if name != nil && name != ""
        @tag = Tag.find_or_create_by(name: name)
        Entrytag.create(entry_id: @entry.id, tag_id: @tag.id)
      end
    end
    if @entry.save
      flash[:notice] = "Your entry was created!"
      redirect_to root_path
    else
      flash[:errors] = @entry.errors
      redirect_to root_path
    end
  end

  def entry_params
    params.require(:entry).permit(:body,:title,
    :tags_attributes => [:id, :name])
  end
end
