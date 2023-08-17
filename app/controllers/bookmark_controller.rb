class BookmarkController < ApplicationController

  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    if @bookmark.save
      redirect_to list_path(id: @bookmark.list_id), notice: "Bookmark was created successfully"
    else
      render :new
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    list_id = @bookmark.list_id
    @bookmark.destroy
    redirect_to list_path(id: list_id), notice: "Bookmark was deleted successfully"
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:comment, :movie_id, :list_id)
  end

end
