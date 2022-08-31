class TodosController < ApplicationController

    def show
        @todo = Todo.find(params[:id])
     end
     
     def index
        @todos = Todo.all
     end

     def new
      @todo = Todo.new
      render :new
     end

     def create
      @todo = Todo.new(params.require(:todo).permit( :description, :due_date,:completed))
      @todo.save
      redirect_to todos_url

     end

     def destroy
      @todo = Todo.find(params[:id])
      @todo.destroy
      redirect_to todos_path
     end
end