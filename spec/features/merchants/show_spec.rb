require "rails_helper"

RSpec.feature "Merchants Show", type: :feature do
  before :each do
    visit merchant_path(1)
  end

  it "renders the page" do
    expect(page).to have_content("Schroeder-Jerde")
  end

  it "has a section for the merchant's items" do
    expect(page).to have_content("Items")
    expect(page).to have_content("Item Nemo Facere")
  end
end
