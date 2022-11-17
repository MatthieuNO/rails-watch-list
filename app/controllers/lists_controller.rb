class ListsController < ApplicationController

  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def new
    @list = List.new
    if @list.save
      redirect_to @lists
    else
      render :new, status: :unprocessable_entity
    end
  end
end
