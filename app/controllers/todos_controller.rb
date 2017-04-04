class TodosController < ApplicationController
  def index
    @todos = Todo.all
  end

  def new
    @todo = Todo.new
  end

  def create
    Todo.create(params.require(:todo).permit(:title))
    redirect_to root_path
  end
end
