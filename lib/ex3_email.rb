class EmailClient
  def initialize (message_class)
    @message_class = message_class
  end

  def message
    @message_class.new
  end
end
