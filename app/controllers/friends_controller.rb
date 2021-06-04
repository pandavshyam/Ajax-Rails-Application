class FriendsController < ApplicationController
  respond_to :js, :html

  def index
    @friends = Friend.all
    respond_with @friends
  end
  
  def new
    @friend = Friend.new
    respond_with @friend
  end

  def create
    @friend = Friend.create(friend_params)
    respond_with(@friend)
  end

  def show
    @friend = Friend.find(params[:id])
  end

  def edit
    @friend = Friend.find(params[:id])
  end

  def update
    @friend = Friend.find(params[:id])
    @friend.update(friend_params)
    respond_with(@friend)
  end

  def destroy
    @friend = Friend.find(params[:id])
    @friend.destroy
  end

  private

  def friend_params
    params.require(:friend).permit(:name, :contact_number, :address)
  end
end
