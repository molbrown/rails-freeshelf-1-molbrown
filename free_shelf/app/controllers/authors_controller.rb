class AuthorsController < ApplicationController
    def index
        @authors = Author.all
        @books = Book.all
    end

    def new
        @author = Author.new
    end

    def create
        @author = Author.new(author_params)
        if @author.save
            redirect_to new_book_path , notice: "Your author was added successfully."
        else
            render :new
        end
    end

    def show
        @author = Author.find(params[:id])
    end

    def edit
        @author = Author.find(params[:id])
    end

    def update
        @author = Author.find(params[:id])
        
        if @author.update(author_params)
            redirect_to authors_path 
        else
            redirect_to edit_author_path
        end
    end

    # def destroy
    #     @book = Book.find(params[:id])
    #     @book.destroy
    #     redirect_to books_path
    # end



    def author_params
        params.require(:author).permit(:name)
    end
end