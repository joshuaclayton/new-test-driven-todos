require "rails_helper"

RSpec.feature "Create a todo" do
  scenario "successfully" do
    sign_in

    create_todo "Buy eggs"

    expect(page).to have_todo("Buy eggs")
  end
end
