class UsersController < ApplicationController
  def index
  end

  def create
  	@user = User.create(name: params[:user][:name], email: params[:user][:email], mobile: params[:user][:mobile])
  	@user.password = params[:user][:password]
  	#@user.fl = Base64.encode64('#{document_params[:file].tempfile.read.to_s}')
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
