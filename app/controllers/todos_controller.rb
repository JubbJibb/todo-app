class TodosController < ApplicationController
  def index
    @name = "Jib"
    @todos = Todo.all
  end

  def new
    @todo = Todo.new
  end

  # def create
  #    @todo = Todo.new(todo_params)
  #    if @todo.save
  #     redirect_to todos_path
  #    else
  #     render :new
  #    end
  # end

  def create
    todo = Todo.new(todo_params)
    todo.save
    redirect_to todos_index_path
  end

  def destroy
    todo = Todo.find(params[:id])
    todo.destroy
    redirect_to todos_index_path
  end

  def edit
    @todo = Todo.find(params[:id])
  end

  def update
    todo = Todo.find(params[:id])
    todo.update(todo_params)
    redirect_to todos_index_path
  end
  
  private
  def todo_params
    params.expect(todo: [ :title ])
  end


end

