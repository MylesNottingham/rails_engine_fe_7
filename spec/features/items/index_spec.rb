require "rails_helper"

RSpec.feature "Items Index", type: :feature do
  before :each do
    visit items_path
  end

  it "renders the page" do
    expect(page).to have_content("Items")
  end

  it "displays all items as links" do
    expect(page).to have_link("Item Nemo Facere")
  end

  it "links to merchant show page" do
    click_link("Item Nemo Facere")

    expect(current_path).to eq(item_path(4))
  end
end
