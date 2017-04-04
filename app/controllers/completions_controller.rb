class CompletionsController < ApplicationController
  def create
    todo = current_user.todos.find(params[:todo_id])
    todo.touch(:completed_at)

    redirect_to root_path
  end
end
