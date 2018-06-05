class BooksController < ApplicationController
    def index
        @books = Book.all.order('language ASC, title ASC')
    end

    def new
        if current_user
            @book = Book.new
        else
            redirect_to new_login_path, alert: "Please log in first."
        end
    end

    def create
        @book = Book.new(book_params)
        if @book.save
            redirect_to books_url, notice: "Your book was created successfully."
        else
            render :new
        end
    end

    def show
        @book = Book.find(params[:id])
    end

    def edit
        if current_user
            @book = Book.find(params[:id])
        else
            redirect_to new_login_path, alert: "Please log in first."
        end
    end

    def update
        @book = Book.find(params[:id])
        if current_user.id == @book.user_id
            if @book.update(book_params)
                redirect_to @book 
            else
                redirect_to edit_book_path
            end
        else
            redirect_to edit_book_path, alert: "Only book creator can edit."
        end
    end

    def destroy
        @book = Book.find(params[:id])
        if current_user
            if current_user.id == @book.user_id
                @book.destroy
                redirect_to books_path
            else
                redirect_to book_path, alert: "Only book creator can delete."
            end
        else
            redirect_to new_login_path, alert: "Please log in first."
        end
    end



    def book_params
        params.require(:book).permit(:title, :author_id, :language, :description, :url, :user_id)
    end
end