require_relative "../lib/ex2_diary"


describe Diary do
let(:entry_double) { double :entry }
let(:entry_class_double) { double :entry_class, new: entry_double }
subject { Diary.new(entry_class_double) }

it { expect(subject).to respond_to(:add) }
it { is_expected.to respond_to(:index) }

describe "#add" do
  it "adds new entry" do
    expect(subject.add("", "")).to eq [entry_double]
  end
end

describe ".index" do
  it "displays titles" do
    allow(entry_double).to receive(:title).and_return("title")
    subject.add("", "")
    expect(subject.index).to eq "title"
  end
end

end
