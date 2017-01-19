class NotesController < ApplicationController
  before_action :authenticate_user!
  def index
    @user = current_user
    @notes = Note.where(user_id: current_user)
  end

end
