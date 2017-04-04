require "rails_helper"

RSpec.feature "View the homepage" do
  scenario "successfully" do
    visit root_path

    expect(page).to have_css("h1", text: "Todos")
  end
end
