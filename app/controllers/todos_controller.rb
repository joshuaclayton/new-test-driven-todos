class TodosController < ApplicationController
  before_action :authenticate

  def index
    @todos = todos
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
    Todo.where(owner_email: current_email)
  end

  def todo_params
    params.require(:todo).permit(:title)
  end
end
