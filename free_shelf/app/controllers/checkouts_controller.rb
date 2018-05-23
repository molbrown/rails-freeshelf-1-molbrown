class CheckoutsController < ApplicationController

def index
    @checkouts = Checkout.all
end



end