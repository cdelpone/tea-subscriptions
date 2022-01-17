class Api::V1::Customers::SubscriptionsController < ApplicationController
  def create
    customer = Customer.find(params[:customer_id])
    subscription = customer.subscriptions.create!(subscription_params)
    render json: SubscriptionsSerializer.new(subscription), status: 201
  end

  private

  def subscription_params
    params.permit(:title, :price, :status, :frequency)
  end
end
