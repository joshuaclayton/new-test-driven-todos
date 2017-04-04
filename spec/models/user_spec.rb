require "rails_helper"

RSpec.describe User, "#signed_in?" do
  it "returns false when the email provided is nil" do
    user = User.new(nil)

    expect(user).not_to be_signed_in
  end

  it "returns false when the email provided is an empty string" do
    user = User.new("")

    expect(user).not_to be_signed_in
  end

  it "returns true when an email is present" do
    user = User.new("person@example.com")

    expect(user).to be_signed_in
  end
end
