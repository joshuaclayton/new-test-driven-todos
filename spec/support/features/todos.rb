module Features
  def create_todo(title)
    visit root_path

    click_on "Create a new todo"

    fill_in "Title", with: title
    click_on "Create Todo"
  end

  def have_todo(title)
    have_css("ul.todos li", text: title)
  end
end
