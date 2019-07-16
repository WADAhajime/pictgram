class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end
  
  def create
    @comment = Comment.new(comment: params[:comment][:comment], topic_id: params[:comment][:topic_id])
    @comment.user_id = current_user.id
# binding.pry
    if @comment.save
      redirect_to topics_path, success: 'コメントに成功しました'
    else
      flash.now[:danger] = "コメントに失敗しました"
      render :new
    end
  end
  
  private
  # def comment_params
  #   params.require(:comment).permit(:comment,)
  # end
end
