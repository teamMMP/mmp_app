class FavoritesController < ApplicationController
	before_action :authenticate_user!

	 def create
        @event = Event.find(params[:event_id])
        @favorite = current_user.favorites.build(event_id: @event.id)

        if @favorite.save
          redirect_to events_path, notice: "お気に入りに登録しました"
        else
          redirect_to events_path, alert: "この投稿はお気に入りに登録できません"
        end
    end

    def destroy
        @favorite = current_user.favorites.find_by!(event_id: params[:event_id])
        @favorite.destroy
        redirect_to events_path, notice: "お気に入りを解除しました"
    end
end
