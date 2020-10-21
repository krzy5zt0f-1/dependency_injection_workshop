require_relative "../lib/extension"

describe Greeter do
  let (:kernel_double) {double :kernel}
  subject { Greeter.new(kernel_double) }
it { is_expected.to respond_to(:greet) }

  describe ".greet" do
    it "greets chosen person" do
      allow(kernel_double).to receive(:gets).and_return("Krzysztof")

      expect{subject.greet}.to output("What is your name?\nHello, Krzysztof\n").to_stdout
    end
  end
end
