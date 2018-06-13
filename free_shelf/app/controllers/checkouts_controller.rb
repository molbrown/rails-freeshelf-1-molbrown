class CheckoutsController < BooksController

def index
    if current_user
        @checkouts = current_user.checkouts
    else
        redirect_to new_login_path, alert: "Please log in first."
    end
end

def new
    @checkout = Checkout.new
    @book = Book.find(params[:book_id])
    @id = @book.id
end

def create
    @checkout = Checkout.new(checkout_params)
    if @checkout.save
        redirect_to checkouts_url, notice: "You have added a book to your reading list."
    else
        redirect_to book_path(@id)
    end
end

def destroy
    @checkout = Checkout.find(params[:id])
    @checkout.destroy
    redirect_to checkouts_path
end


private
    def checkout_params
        params.require(:checkout).permit(:book_id, :user_id)
    end


end
