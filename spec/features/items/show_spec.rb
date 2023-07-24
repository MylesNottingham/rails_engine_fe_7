require "rails_helper"

RSpec.feature "Items Show", type: :feature do
  before :each do
    visit item_path(4)
  end

  it "renders the page" do
    expect(page).to have_content("Item Nemo Facere")
  end

  it "has a section for the item's description" do
    expect(page).to have_content("Description")
    expect(page).to have_content("Sunt eum id eius magni consequuntur delectus veritatis. Quisquam laborum illo ut ab. Ducimus in est id voluptas autem.")
  end

  it "has a section for the item's unit price" do
    expect(page).to have_content("Unit Price")
    expect(page).to have_content("$42.91")
  end
end
