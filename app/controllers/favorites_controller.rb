class FavoritesController < ApplicationController
    before_action :authenticate_user!
    
def create
    @book = Book.find(params[:book_id])
    favorite = @book.favorites.new(user_id: current_user.id)
    favorite.save

    #redirect_to book_path(book)
end
    
def destroy
    book = Book.find(params[:book_id])
    favorite = @book.favorites.find_by(book_id: book.id)
    favorite.destroy

    #redirect_to book_path(book)
end

end
