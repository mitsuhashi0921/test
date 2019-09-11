class UsersController < ApplicationController

before_action :authenticate_user!

  def edit
  	  @user = User.find(params[:id])
      if @user == current_user
      else
        redirect_to user_path(current_user)
      end
  end


  def show
  	  @Book = Book.new
      @user = User.find(params[:id])
      @books = @user.books.all
  end

  def index
      @Book = Book.new
  	  @users = User.all.order(created_at: :desc)
      @user = current_user
  end

  def new
  end

  def update
      @user = User.find(params[:id])
      @user.update(user_params)
      if @user.save
        flash[:notice] = "You have updated user successfully."
        redirect_to user_path(@user.id)
      else
      	render :edit
      end

  end

  private

  def user_params
      params.require(:user).permit(:name, :profile_image, :introduction)
  end

end
