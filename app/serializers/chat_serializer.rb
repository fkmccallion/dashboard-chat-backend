class ChatSerializer

  def initialize(chat_object)
    @chat = chat_object
  end

  def to_serialized_json
    options = {
      except: [:updated_at]
    }
    @chat.to_json(options)
  end

end
