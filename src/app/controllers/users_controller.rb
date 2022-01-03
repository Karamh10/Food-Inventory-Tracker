class UsersController < ApplicationController
  def index
    @users = User.all
    #@user = User.find(params[:user_id])
  end
  
  def show
    @user = User.find_by_id(params[:id])
    #@user = User.find(params[:user_id])
  end

  def edit
    @user = current_user
  end

  def update
    respond_to do |format|
      if current_user.update(user_params)
        format.html { redirect_to current_user, notice: 'You successfully updated your profile.'}
      else
        format.html { render :edit}
      end
    end
  end

  private

  def user_params
    params.require(:user).permit(
      :bio,
      :first_name,
      :last_name,
    )
  end
end
