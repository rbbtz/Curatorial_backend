class ExhibitionsController < ApplicationController
    def index
        render json: Exhibition.all
    end

    def show
        render json: Exhibition.find(params[:id])
    end

    def new
        exhibition = User.new
    end

    def create
        exhibition = Exhibition.create(exhibition_params)
        render json: exhibition
    end

    def update
        exhibition = Exhibition.find(params[:id])
        exhibition.update(exhibition_params)
    end

    def destroy
        exhibition = Exhibition.find(params[:id])
        exhibition.destroy
    end

    private

    def exhibition_params
        params.require(:exhibition).permit(:user_id, :summary, :description, :public, :photo)
    end
end
