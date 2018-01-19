require "spec_helper"

RSpec.describe Aamva::Generator do
  describe ".day" do
    describe "with no options" do
      it { expect(described_class.day).to be_a_valid_day }
    end
  end

  describe ".dcg" do
    describe "with no options" do
      it { expect(described_class.dcg).to be_a_valid_dcg }
    end
  end

  describe ".dac" do
    describe "with no options" do
      it { expect(described_class.dac).to be_a_valid_dac }
    end
  end

  describe ".dbb" do
    describe "with no options" do
      it { expect(described_class.dbb).to be_a_valid_dbb }
    end
  end
end
