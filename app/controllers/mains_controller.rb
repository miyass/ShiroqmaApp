class MainsController < ApplicationController

    def top
        @form = Form.new
        @forms = Form.all
    end

    def form
        
    end

    def create
        Form.create(form_params)
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
        params.permit(:text, :picture, :illust)
    end

end
