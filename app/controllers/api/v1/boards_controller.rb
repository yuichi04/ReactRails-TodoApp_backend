class Api::V1::BoardsController < ApplicationController
  
  def index
    boards = Board.all
    render json: {status: 200, boards: boards}
  end

  def show
    board = Board.find(params[:id]);
    render json: {status: 200, board: board}
  end

  def create
    board = Board.new(board_params)
    if board.save
      render json: {status:200, board: board}
    else
      render json: {status: 500, message: "ボードの作成に失敗しました"}
    end
  end
  
def destroy
  board = Board.find(params[:id]);
  if board.destroy
    render json: {status: 200, board: board}
  else
    render json: {status: 500, message: "ボードの削除に失敗しました"}
  end
end

def update
  board = Board.find(params[:id]);
  if board.update(board_params)
    render json: {status: 200, board: board}
  else
    render json: {status: 500, message: "ボードの更新に失敗しました"}
  end
end
  private
  def board_params
    params.require(:board).permit(:title, :detail, :is_completed, :updated_at)
  end
end
