class CommentsController < ApplicationController
  def create
    @note = Note.find(params[:note_id])
    @comment = @note.comments.create(comment_params)
    @comment.user_id = current_user.id
    @comment.save
    redirect_to note_path(@note)
  end

  private
  def comment_params
    params.require(:comment).permit(:body)
  end
end
