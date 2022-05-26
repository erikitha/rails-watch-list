class ListsController < ApplicationController
  def index
    @lists = List.all
  end
  def show
    @list = List.find(params[:id])
  end
  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)

    if @list.save
      redirect_to @list, notice: 'List was successfully created.'
    else
      render :new # é para aparecer de novo a pag new com o q falta de informacao
    end
  end

  private
  def list_params
    params.require(:list).permit(:name)
  end
end
