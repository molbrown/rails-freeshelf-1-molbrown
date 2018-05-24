class AuthorsController < ApplicationController
    def index
        @authors = Author.all.order('name ASC')
        @books = Book.all.order('title ASC')
    end

    def new
        if current_user
            @author = Author.new
        else
            redirect_to new_login_path, alert: "Please log in first."
        end
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
        if current_user
            @author = Author.find(params[:id])
        else
            redirect_to new_login_path, alert: "Please log in first."
        end
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
    #     @author = Author.find(params[:id])
    #     @author.destroy
    #     redirect_to authors_path
    # end



    def author_params
        params.require(:author).permit(:name)
    end
end