class TodosController < ApplicationController
  before_action :authenticate

  def index
    @todos = Todo.where(owner_email: session[:current_email])
  end

  def new
    @todo = Todo.new
  end

  def create
    Todo.create(params.require(:todo).permit(:title).merge(owner_email: session[:current_email]))
    redirect_to root_path
  end
end
