require "rails_helper"

RSpec.describe Todo, ".completed" do
  it "returns todos that have been completed" do
    complete_todo = create(:todo, :completed)
    _incomplete_todo = create(:todo, :incomplete)

    expect(Todo.completed).to match_array [complete_todo]
  end
end

RSpec.describe Todo, ".incomplete" do
  it "returns todos that have not been completed" do
    _complete_todo = create(:todo, :completed)
    incomplete_todo = create(:todo, :incomplete)

    expect(Todo.incomplete).to match_array [incomplete_todo]
  end
end
