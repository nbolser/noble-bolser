# frozen_string_literal: true
class GuestsController < ApplicationController
  respond_to :html

  def new
    @guest = Guest.new
  end

  def create
    @guest = Guest.find_or_create_by(guest_params)
    if @guest.save
      render :confirm
    else
      render new_guest_path
    end
  end

  private

  def guest_params
    params.require(:guest).permit(:name, :email, :comments, :attending)
  end
end
