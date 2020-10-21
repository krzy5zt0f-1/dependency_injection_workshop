require_relative "../lib/ex1.rb"

describe Note do

  describe ".display" do
    it "displays a formated note" do
    subject = Note.new("typowy naglowek", "takie tam ipsum lori")
    expect(subject.display).to eq ("Title: typowy naglowek\ntakie tam ipsum lori")
  end
end
end
