require "rails_helper"

RSpec.feature "Create a todo" do
  scenario "successfully" do
    visit root_path

    click_on "Create a new todo"

    fill_in "Title", with: "Buy eggs"
    click_on "Create Todo"

    expect(page).to have_css("ul.todos li", text: "Buy eggs")
  end
end
