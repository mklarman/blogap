class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    user = User.new(user_params)
    if user.save
      flash[:message] = 'User Created!'
      redirect_to '/users'
    else
      flash[:message] = 'Unable to create User.  Try again.'
      redirect_to users_new_path
    end
  end

  def show
    @user = User.find_by_id(params[:id])
  end

  def edit
    @user = User.find_by_id(params[:id])
  end

  def update
    @user = User.find_by_id(params[:id])
    if @user.update(user_params)
      flash[:message] = 'Your account was updated'
      redirect_to "/users/#{@user.id}"
    else
      flash[:message] = 'try again'
      render "/users/#{@user.id}/edit"
    end
  end

  def destroy
    @user =User.find(params[:id])
    @user.destroy
    redirect_to '/'
  end

private
  def user_params
    params.require(:user).permit(:fname, :lname, :username, :email, :password)
  end


end


