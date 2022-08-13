class Api::V1::TodosController < ApplicationController
    def show
        todos = Todo.where(board_id: params[:id])
        render json: {status: 200, todos: todos}
    end

    def create
        todo = Todo.new(todo_params)
        if todo.save
            render json: { status: 200, todo: todo }
        else
            render json: { status: 500, message: "タスクの作成に失敗しました" }
        end
    end

    def destroy
        todo = Todo.find(params[:id])
        if todo.destroy
            render json: { status: 200, todo: todo }
        else
            render json: { status: 500, message: "タスクの削除に失敗しました"}
        end
    end

    def update
        todo = Todo.find(params[:id])
        if todo.update(todo_params)
            render json: {status: 200, todo: todo}
        else
            render json: {status: 500, message: "タスクの更新に失敗しました"}
        end
    end

    private
    def todo_params
        params.require(:todo).permit(:content, :detail, :is_completed, :is_editing, :updated_at, :board_id)
    end
end
