class OrdersController < ApplicationController
  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    @order.user = current_user
    @meal = Meal.find(params[:meal_id])
    @order.meal = @meal
    if @order.save
      flash[:notice] = "Your order has been successfully created!"
      redirect_to meal_path(@order.meal)
    else
      render 'meals/show'
    end
  end

  private

  def order_params
    params.require(:order).permit(:order_quantity, :pick_up_date)
  end
end
