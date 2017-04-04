require "rails_helper"

RSpec.feature "User views own todos" do
  scenario "successfully" do
    sign_in_as "person@example.com"
    create_todo "Buy eggs"

    sign_in_as "different@example.com"
    create_todo "Buy milk"

    expect(page).to have_todo("Buy milk")
    expect(page).not_to have_todo("Buy eggs")
  end
end
