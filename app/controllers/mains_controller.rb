class MainsController < ApplicationController

    def top
        @form = Form.new
        @forms = Form.all.order('updated_at DESC')
    end

    def form
        @form = Form.find(params[:id])
    end

    def create
        @form = Form.new(form_params)
        @form.save
        redirect_to action: :top
    end

    def feed
        @form_feed = Form.all.order("id ASC")
    end

    def picture
        @content_pict = Form.select("picture")
    end

    def illust
        @content_illust = Form.select("illust")
    end

    def music
        @content_music = Form.select("music")
    end

    def movie
        @content_movie = Form.select("movie")
    end

    private
    def form_params
        #params.permit(:text, :picture, :illust)
        params.require(:form).permit(:text, :title, :picture, :category).merge(user_id: current_user.id)
    end

end
