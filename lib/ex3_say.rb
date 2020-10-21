class SayHello
  def initialize(message_class )
    @message = message_class.new
  end
  def run
  @message.send("friend@example.com", "HELLO!")
  end
end
