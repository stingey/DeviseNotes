class MynotesController < ApplicationController
  def index
    @user = current_user
    @mynotes = Note.where(user_id: current_user)
  end
end
