require "rails_helper"

RSpec.feature "Merchants Index", type: :feature do
  before :each do
    visit merchants_path
  end

  it "renders the page" do
    expect(page).to have_content("Merchants")
  end

  it "displays all merchants as links" do
    expect(page).to have_link("Schroeder-Jerde")
  end

  it "links to merchant show page" do
    click_link("Schroeder-Jerde")

    expect(current_path).to eq(merchant_path(1))
  end
end
