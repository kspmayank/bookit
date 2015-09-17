class UsersController < ApplicationController
  def index
  end

  def create
  	@user = User.create(name: params[:user][:name], email: params[:user][:email], mobile: params[:user][:mobile])
  	@user.password = params[:user][:password]
  	#p @user.uploaded_file = params["file"]
  	#@user.uploaded_image = params[:img]
  	@user.file = document_params[:file].tempfile.read
  	@user.save!
  end

  def show
  	
  end

  def update
  	
  end

  def delete
  	
  end

  def document_params
  	params.require(:user).permit(:file)
  end
end
