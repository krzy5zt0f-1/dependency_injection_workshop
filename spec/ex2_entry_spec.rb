require_relative "../lib/ex2_entry"

describe Entry do
  it { expect(Entry.new("", "")).to respond_to(:body) }
  it { expect(Entry.new("", "")).to respond_to(:title) }

  describe "creating a new entry" do
    it "creates a new entry object" do
      expect(Entry.new("", "")).to be_instance_of Entry
    end
  end
  describe ".title" do
    it "returns title" do
      expect(Entry.new("title", "").title).to eq ("title")
    end
  end
  describe ".body" do
    it "returns body" do
      expect(Entry.new("", "body").body).to eq ("body")
    end
  end
end
