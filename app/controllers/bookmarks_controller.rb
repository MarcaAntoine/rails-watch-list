class BookmarksController < ApplicationController
  def new
    @bookmark = Bookmark.new
    @list = List.find(@params[:list_id])
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    if @bookmark.save
      redirect_to list_path_bookmarks_path
    end
  end

  def destroy
    bookmark.destroy
    redirect_to bookmarks_path, status: :see_other
  end

  private

  def bookmark_params
    params.required(:bookmark).permit(:name)
  end
end
