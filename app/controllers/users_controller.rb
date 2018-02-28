class UsersController < ApplicationController
  def index
    @user = current_user
    authorize @user
  end

  def show
    @user = User.find(params[:id])
    authorize @user
  end
  # def new
  #
  # end
  #
  # def create
  #   user = Note.new(user_params)
  #   user.user = current_user
  #   user.save!
  #   redirect_to '/'
  # end
  #
  # def update
  #   @user.update(user_params)
  #   redirect_to '/'
  # end
  #
  # def edit
  #   @user = Note.find(params[:id])
  # end
  #
  # def show
  # end
  #
  # def index
  #   @users = Note.none
  #   if current_user
  #     @users = current_user.readable
  #   end
  # end
  #
  # private
  #
  # def user_params
  #   params.require(:user).permit(:content, :visible_to)
  # end
end
