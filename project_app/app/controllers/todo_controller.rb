class TodoController < ApplicationController
    def index 
        @todos = Todo.all
    end

    def show
        @todo = Todo.find_by(id: params[:id])
    end 

    def create 
        todo = params['todo']
        Todo.create(title: todo['title'],
                    description: todo['description'])
        redirect_to todos_path
    end

    def destroy 
        Todo.destroy(params['id'])
        redirect_to todos_path
    end

    def update 
        todo = params['todo']
        Todo.update(params[:id],
                    title: todo['title'],
                    description: todo['description'])
        redirect_to todos_path
    end
end
