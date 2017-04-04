module Features
  def create_todo(title)
    visit root_path

    click_on "Create a new todo"

    fill_in "Title", with: title
    click_on "Create Todo"
  end

  def mark_todo_complete(title)
    within("li:contains('#{title}')") do
      click_on("Mark complete")
    end
  end

  def have_completed_todo(title)
    have_css("ul.todos.completed li", text: title)
  end

  def have_todo(title)
    have_css("ul.todos.incomplete li", text: title)
  end
end
