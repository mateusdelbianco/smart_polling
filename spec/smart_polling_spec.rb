require 'spec_helper'

RSpec.describe SmartPolling do
  describe "poll" do
    context "returning false" do
      let(:block) { -> { false } }

      it "raises SmartPolling::TimeoutError" do
        expect { SmartPolling.poll(timeout: 0.2, interval: 0.05, &block) }.
          to raise_error(SmartPolling::TimeoutError)
      end

      it "raises a custom error" do
        expect { SmartPolling.poll(timeout: 0.2, interval: 0.05, timeout_error: StandardError.new("custom_error"), &block) }.
          to raise_error(StandardError, "custom_error")
      end
    end

    context "returning true after some calls" do
      let(:block) do
        values = [false, false, "return_value", "another_return_value"]
        -> { values.shift }
      end

      it "returns the first non-false value" do
        expect(SmartPolling.poll(timeout: 0.2, interval: 0.05, &block)).to eq("return_value")
      end
    end

    context "returning some value" do
      let(:block) { -> { "return_value" } }

      it "returns the value" do
        expect(SmartPolling.poll(timeout: 0.2, interval: 0.05, &block)).to eq("return_value")
      end
    end
  end
end
