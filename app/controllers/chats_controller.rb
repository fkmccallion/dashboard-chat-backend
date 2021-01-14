class ChatsController < ApplicationController

  def index
    chats = Chat.all
    render json: ChatSerializer.new(chats).to_serialized_json
  end

end
