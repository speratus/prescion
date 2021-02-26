class StoriesController < ApplicationController

    before_action :require_login

    def new
        @story = Story.new
    end

    def create
      @story = Story.new(story_params)

      @story.user_id = @current_user.id
      if @story.save
        redirect_to story_path(@story)
      else
        redirect_to new_story_path
      end
    end

    def show

    end

    def edit

    end

    def update

    end

    def delete

    end

    private

    def story_params
      params.require(:story).permit(:title, :content)
    end

end