class BookCommentsController < ApplicationController
    
    def
    book = Book.find(params[:book_id])
    @book_comment = Book_comments.new(book_comment_params)
    @book_comment.book_id = @book.id
    @book_comment.user_id = current_user.id
    unless @book_comment.save
    render 'error'
    end    
    
    def destroy
    @book = Book.find(params[:book_id])
    book_comment = @book.book_comments.find(params[:id])
    book_comment.destroy
    end
    
end
