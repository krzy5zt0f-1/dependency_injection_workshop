class Note
  def initialize(title, body)
    @title = title
    @body = body
  end

  def display
    NoteFormatter.new(@title, @body).note
  end
end

class NoteFormatter
  attr_reader :note
  def initialize(title, body)
    @note = "Title: #{title}\n#{body}"
  end
end
