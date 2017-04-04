class TodosController < ApplicationController
  before_action :authenticate

  def index
    @incomplete_todos = todos.incomplete
    @completed_todos = todos.completed
  end

  def new
    @todo = todos.new
  end

  def create
    todos.create(todo_params)
    redirect_to root_path
  end

  private

  def todos
    current_user.todos
  end

  def todo_params
    params.require(:todo).permit(:title)
  end
end
