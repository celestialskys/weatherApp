class Api::UsersController < ApplicationController
  def index
    @users = User.all
    render :index
  end

  def show
    @user = User.find(params[:id])
    if !@user.present?
      redirect_back(fallback_location: root_path)
      # format.js {render inline: "location.reload();"}
    end
  end

  def destroy
    user = User.find(params[:id])
    if user.destroy
      render json: home
    else
      redirect_back(fallback_location: root_path)
    end
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to @user_path
    else
      render "new"
    end
  end

  def new
    render "new"
  end

  def update
    @user = User.find(params[:id])
    if @user.update(params)
     redirect_back(fallback_location: root_path)
    end
  end
end
