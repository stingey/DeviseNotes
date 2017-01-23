class MynotesController < ApplicationController
  def index
    @user = current_user
    @mynotes = Note.where(user_id: current_user)
  end
  def show
    @user = current_user
    @note = Note.find(params[:id])
  end
  def edit
    @user = current_user
    @note = Note.find(params[:id])
  end
  def update
    @note = Note.find(params[:id])
    @note.update(note_params)
    redirect_to mynote_path(@note)
  end
  def destroy
    @note = Note.find(params[:id])
    @note.destroy
    redirect_to mynotes_path
  end

  private
  def note_params
    params.require(:note).permit(:title, :body)
  end
end
