class PaymentsController < ApplicationController
  before_action :set_order, only: [:new, :create]

  def new
    @payment = @order.build_payment
  end

  def create
    @payment = @order.build_payment(payment_params)

    if @payment.save
      flash[:notice] = 'Your payment is processed and the order will be delivered to you.'
      redirect_to root_path
    else
      render :new
    end
  end

  private
    def set_order
      @order = Order.find(params[:order_id])
    end

    def payment_params
      params.require(:payment).permit(:name, :address, :email, :phone_number)
    end
end
