module V1
  class TodosController < ApplicationController
    before_action :set_todo, only: %i[show update destroy]

    def index
      @todos = current_user.todos
      json_response(@todos)
    end

    def show
      json_response(@todo)
    end

    def create
      @todo = current_user.todos.create!(todo_params)
      json_response(@todo, :created)
    end

    def update
      @todo.update(todo_params)
      head :no_content
    end

    def destroy
      @todo.destroy
      head :no_content
    end

    private
      def set_todo
        @todo = current_user.todos.find(params[:id])
      end

      def todo_params
        params.permit(:title)
      end
  end
end
