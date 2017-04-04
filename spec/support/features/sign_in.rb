module Features
  def sign_in
    sign_in_as "person@example.com"
  end

  def sign_in_as(email)
    visit sign_in_path

    fill_in "Email", with: email
    click_on "Sign in"
  end
end
