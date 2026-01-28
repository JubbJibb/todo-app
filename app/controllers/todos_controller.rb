class TodosController < ApplicationController
  def index
    @name = "Jib"
    @todos = Todo.all
  end
end
