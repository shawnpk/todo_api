module V1
  class ItemsController < ApplicationController
    before_action :set_todo
    before_action :set_item, only: %i[show update destroy]

    def index
      json_response(@todo.items)
    end

    def show
      # @item = @todo.items.find(params[:id])
      json_response(@item)
    end

    def create
      @item = @todo.items.create!(item_params)
      json_response(@item, :created)
    end

    def update
      # @item = @todo.items.find(params[:id])
      @item.update(item_params)
      head :no_content
    end

    def destroy
      # @item = @todo.items.find(params[:id])
      @item.destroy
      head :no_content
    end

    private
      def item_params
        params.permit(:name, :done)
      end

      def set_item
        @item = @todo.items.find_by!(id: params[:id]) if @todo
      end

      def set_todo
        @todo = Todo.find(params[:todo_id])
      end
  end
end
