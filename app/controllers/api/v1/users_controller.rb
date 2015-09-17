module Api
  module V1
    class UsersController < ApplicationController
      skip_before_filter  :verify_authenticity_token
      respond_to :json
      def index
        respond_with User.all
      end
      
      def show
        respond_with User.find(params[:id])
      end
      
      def create
        @user = User.create(name: params[:name], email: params[:email], mobile: params[:mobile], file: params[:file], image: params[:image])
        @user.password = params[:password]
        @user.save
        respond_with @user do |format|
              format.json { render json: @user.to_json }
        end
      end
      
      def update
        @user = User.find(params[:id])
        @user.update(name: params[:name], mobile: params[:mobile], file: params[:file], image: params[:image])
        respond_with @user do |format|
              format.json { render json: @user.to_json }
        end
      end
      
      def destroy
        respond_with User.destroy(params[:id])
      end
    end
  end
end