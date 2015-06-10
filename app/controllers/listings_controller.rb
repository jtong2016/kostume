class ListingsController < ApplicationController
  def index
    @listings = Listing.all
  end

  def show
    @listing = Listing.find(params[:id])
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new
    @listing.category_id = params[:category_id]
    @listing.listing_id = params[:listing_id]
    @listing.image = params[:image]
    @listing.user_id = params[:user_id]
    @listing.description = params[:description]
    @listing.available = params[:available]

    if @listing.save
      redirect_to "/listings", :notice => "Listing created successfully."
    else
      render 'new'
    end
  end

  def edit
    @listing = Listing.find(params[:id])
    if @listing.user_id != current_user.id
      redirect_to "/listings", :alert => "You are not allowed to edit!"
    else
      render 'edit'
    end
  end

  def update
    @listing = Listing.find(params[:id])

    @listing.category_id = params[:category_id]
    @listing.listing_id = params[:listing_id]
    @listing.image = params[:image]
    @listing.user_id = params[:user_id]
    @listing.description = params[:description]
    @listing.available = params[:available]

    if @listing.save
      redirect_to "/listings", :notice => "Listing updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @listing = Listing.find(params[:id])
        if @listing.user_id != current_user.id
      redirect_to "/listings", :alert => "You are not able to delete it!"
    else
    @listing.destroy

    redirect_to "/listings", :notice => "Listing deleted."
  end
end
end
