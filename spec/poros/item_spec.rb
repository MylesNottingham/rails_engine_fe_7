require "rails_helper"

RSpec.describe Item, type: :poro do
  it "exists" do
    item_data = {
      id: "1",
      attributes: {
        name: "Pencil",
        description: "You can use it to write things",
        unit_price: 2
      }
    }

    item = Item.new(item_data)

    expect(item).to be_a(Item)
    expect(item.id).to eq("1")
    expect(item.name).to eq("Pencil")
    expect(item.description).to eq("You can use it to write things")
    expect(item.unit_price).to eq(2)
  end
end
