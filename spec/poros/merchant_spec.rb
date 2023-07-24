require "rails_helper"

RSpec.describe Merchant, type: :poro do
  it "exists" do
    merchant_data = {
      id: "1",
      attributes: {
        name: "Merchant 1"
      }
    }

    merchant = Merchant.new(merchant_data)

    expect(merchant).to be_a(Merchant)
    expect(merchant.id).to eq("1")
    expect(merchant.name).to eq("Merchant 1")
  end
end
