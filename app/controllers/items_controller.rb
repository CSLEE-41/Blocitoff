class ItemsController < ApplicationController

  def create
    @user = User.find(params[:user_id])

    @item = @user.items.build(item_params)

    if @item.save
      flash[:notice] = "Item Saved"
      redirect_to @user
    else
      flash[:alert] = "ERRORS!"
      render "users/show"
    end
  end

  def destroy
    @user = User.find(params[:user_id])
    @item = @user.items.find(params[:id])


    if @item.destroy
      flash[:notice] = "Item was completed"
    else
      flash[:error] = "Error with marking complete. Try again."
    end

    respond_to do |format|
      format.html
      format.js
    end
  end
  





  private


  def item_params
    params.require(:item).permit([:name])
  end
end


