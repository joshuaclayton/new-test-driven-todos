require "rails_helper"

RSpec.feature "User views own todos" do
  scenario "successfully" do
    as_user "person@example.com" do
      create_todo "Buy eggs"
      create_todo "Buy cheese"
      create_todo "Buy broccoli"
    end

    as_user "different@example.com" do
      create_todo "Buy milk"

      expect(page).to have_todo("Buy milk")
      expect(page).not_to have_todo("Buy eggs")
    end
  end

  def as_user(email, &block)
    sign_in_as email

    block.call

    sign_in_as ""
  end
end
