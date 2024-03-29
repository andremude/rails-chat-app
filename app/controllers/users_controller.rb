class UsersController < ApplicationController
  # def new
  #   @user = User.new
  # end

  # def create
  #   @user = User.create(user_params)
  #   if @user.valid?
  #     @user.save
  #     redirect_to @user
  #   else
  #     redirect :new
  #   end
  # end

  def show
    @user = User.find(params[:id])
    @current_user = current_user
    @rooms = Room.public_rooms
    @users = User.all_except(@current_user)
    @room = Room.new
    @message = Message.new
    @room_name = get_name(@user, @current_user)
    @single_room = Room.where(name: @room_name).first || Room.create_private_room([@user, @current_user], @room_name)
    @messages = @single_room.messages

    render 'rooms/index'
  end

  private

  # def user_params
  #   params.require(:user).permit(:username, :email, :password, :password_confirmation)
  # end

  def get_name(user1, user2)
    users = [user1, user2].sort
    "private_#{users[0].id}_#{users[1].id}"
  end
end
