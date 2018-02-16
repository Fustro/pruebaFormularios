class TodosController < ApplicationController

  def index

    @todo = Todo.all

  end

  def new

    @todo = Todo.new

  end

  def create

    @todo = Todo.new(todo_params)

    if todo.save
      redirect_to root_path, notice: 'todo se guardo'
    else
      redirect_to todos_new_path, notice: 'no se guardo'
    end

  end

  private

  def todo_params

    params.require(:todo).permit(:content)

  end

end
