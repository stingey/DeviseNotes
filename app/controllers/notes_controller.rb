class NotesController < ApplicationController
  # before_action :authenticate_user!
  def index
    @user = current_user
    @notes = Note.all
    @notesuser = Note.where(user_id: current_user)
  end
  def new
    @user = current_user
    @note = current_user.notes.build
  end

  def create
    @note = current_user.notes.build(note_params)
    if @note.save
      redirect_to root_path
    else
      render 'new'
    end
  end
  def show
    @note = Note.find(params[:id])
    @user = User.find(@note.user_id)
  end

  private
  def note_params
    params.require(:note).permit(:title, :body)
  end
end
