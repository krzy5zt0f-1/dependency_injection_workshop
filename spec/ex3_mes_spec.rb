require_relative "../lib/ex3_mes"


describe Message do
it { is_expected.to respond_to(:send).with(2).arguments }

end
