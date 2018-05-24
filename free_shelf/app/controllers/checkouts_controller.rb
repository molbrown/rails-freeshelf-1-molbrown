class CheckoutsController < BooksController

def index
    @checkouts = Checkout.all.map{ |co| co.user_id == current_user.id }
end

def new
    @checkout = Checkout.new
    @book = Book.find(params[:book_id])
end

def create
    @checkout = Checkout.new(checkout_params)
    if @checkout.save
        redirect_to checkouts_url, notice: "You have added a book to your reading list."
    else
        render :new
    end
end

def destroy
    @checkout = Checkout.find(params[:id])
    @checkout.destroy
    redirect_to checkouts_path
end




def checkout_params
    params.require(:checkout).permit(:book_id, :user_id)
end


end
