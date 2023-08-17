
class ListController < ApplicationController
  def home
    @lists = List.all
  end

  def list
    @lists = List.all
  end

  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
    @list_bookmarks = @list.bookmarks
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to @list, notice: "List was created successfully"
    else
      render :new
    end
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end

end
