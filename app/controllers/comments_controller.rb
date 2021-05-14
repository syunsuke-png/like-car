class CommentsController < ApplicationController
  def create
    comment = Comment.create(comment_params)
    redirect_to "/cars/#{comment.car.id}"
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, car_id: params[:car_id])
  end
end
