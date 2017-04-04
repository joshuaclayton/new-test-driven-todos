require "rails_helper"

RSpec.feature "User marks a todo complete" do
  scenario "successfully" do
    sign_in
    create_todo "Buy milk"
    mark_todo_complete "Buy milk"

    expect(page).to have_completed_todo("Buy milk")
    expect(page).not_to have_todo("Buy milk")
  end
end
