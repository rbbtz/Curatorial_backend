class ExhibitionLikesController < ApplicationController
  def create
    exhibition_like = ExhibitionLike.create(exhibition_like_params)
    render json: exhibition_like
  end

  def destroy
    exhibition_like = ExhibitionLike.find(params[:id])
    exhibition_like.destroy
    render json: exhibition_like
  end

  private

  def exhibition_like_params
    params.require(:exhibition_like).permit(:exhibition_id, :user_id)
  end

end