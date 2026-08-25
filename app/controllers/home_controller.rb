class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all

    if params[:search].present?
      @users =@users.where("email LIKE ?","%#{params[:search]}%")
    end  
  end

  def destroy
     @user =User.find(params[:id])
     @user.destroy
     respond_to do |format|
       format.turbo_stream
       format.html {redirect_to root_path}
     end
    end      
end