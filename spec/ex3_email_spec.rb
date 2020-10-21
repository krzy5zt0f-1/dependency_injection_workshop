require_relative "../lib/ex3_email"

describe EmailClient do
  let(:message_double) { double :message }
  let(:message_class_double) { double :message_class, new: message_double}
subject { EmailClient.new(message_class_double) }

it { is_expected.to respond_to(:message) }

  describe ".message" do
    it "sends a message" do
      subject.message
    end
  end
end
