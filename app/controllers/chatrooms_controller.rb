class ChatroomsController < ApplicationController
    def index
        @chatroom = Chatroom.all
    end

    before_action :authenticate_user!
    def new
        @chatroom =Chatroom.new
    end

    def create
        @chatroom = Chatroom.create(post_params)
        redirect_to root_path
    end

    def post_params
        params.require(:chatroom).permit(:topic)
    end

    def show
        @chatroom = Chatroom.find( params[:id])
        @message = Message.new
    end
end
