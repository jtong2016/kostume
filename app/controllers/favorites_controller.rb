class FavoritesController < ApplicationController
  def index
    @favorites = Favorite.all
  end

  def show
    @favorite = Favorite.find(params[:id])
  end

  def new
    @favorite = Favorite.new
  end

  def create
    @favorite = Favorite.new
    @favorite.user_id = params[:user_id]
    @favorite.listing_id = params[:listing_id]

    if @favorite.save
      redirect_to "/favorites", :notice => "Favorite created successfully."
    else
      render 'new'
    end
  end

  #def edit
  #  @favorite = Favorite.find(params[:id])
  #end

   def edit
    @favorite = Favorite.find(params[:id])
    if @favorite.user_id != current_user.id
      redirect_to "/favorites", :alert => "You are not allowed to edit!"
    else
      render 'edit'
    end
  end

  def update
    @favorite = Favorite.find(params[:id])

    @favorite.user_id = params[:user_id]
    @favorite.listing_id = params[:listing_id]

    if @favorite.save
      redirect_to "/favorites", :notice => "Favorite updated successfully."
    else
      render 'edit'
    end
  end

  #def destroy
    #@favorite = Favorite.find(params[:id])

    #@favorite.destroy

    #redirect_to "/favorites", :notice => "Favorite deleted."
  #end


def destroy
    @favorite = Favorite.find(params[:id])
        if @favorite.user_id != current_user.id
      redirect_to "/favorites", :alert => "You are not allowed to delete it!"
    else
    @favorite.destroy

    redirect_to "/favorites", :notice => "Favorite deleted."
  end

end
end
