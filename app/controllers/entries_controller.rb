class EntriesController < ApplicationController
  helper_method :entry_params



  def create
    @user = current_user
    @entry = @user.entries.build(entry_params)
    if @entry.save
      flash[:notice] = "Your entry was created!"
      redirect_to root_path
    else
      flash[:errors] = @entry.errors
      redirect_to root_path
    end
  end




  def entry_params
    params[:entry][:tags_attributes].each do |key,value|
      value[:name] = value[:name].gsub(/\s+/, "")
    end
    params.require(:entry).permit(:body,:title,
    :tags_attributes => [:id, :name])
  end
end
