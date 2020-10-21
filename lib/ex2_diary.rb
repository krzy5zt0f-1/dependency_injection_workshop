#require_relative "ex2_entry"
class Diary
  def initialize(entry_class )
    @entries = []
    @entry_class = entry_class
  end

  def add(title, body)
    @entries << @entry_class.new(title, body)
  end

  def index
    titles = @entries.map do |entry|
      entry.title
    end
    titles.join("\n")
  end
end
