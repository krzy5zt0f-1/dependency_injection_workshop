require_relative "../lib/ex3_say"

describe SayHello do
  let(:message_double) { double :message }
  let(:message_class_double) { double :message_class, new: message_double}
  subject { SayHello.new(message_class_double) }
it { is_expected.to respond_to(:run) }
  describe ".run" do
    it "runs it properly" do
      allow(message_double).to receive(:send).and_return("")
      subject.run
    end
  end
end
