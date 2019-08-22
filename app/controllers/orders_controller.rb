class OrdersController < ApplicationController

  def index
    @order = Order.all
  end

  def view_my_orders
    @my_orders = Order.where(user: current_user)
  end

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
      redirect_to my_orders_path
    else
      render 'meals/show'
    end
  end

  def change_status
    @order = Order.find(params[:id])
    params[:status] == "accept" ? @order.status = 'accepted' : @order.status = 'declined'
    @order.save
    redirect_to my_meals_path
  end

  private

  def order_params
    params.require(:order).permit(:order_quantity, :pick_up_date)
  end
end
