class ChatsController < ApplicationController

  def index
    chats = Chat.all
    render json: ChatSerializer.new(chats).to_serialized_json
  end

  def create
    Chat.create(user_id: params[:user_id], content: params[:content])
    chats = Chat.all
    render json: ChatSerializer.new(chats).to_serialized_json
  end

end
