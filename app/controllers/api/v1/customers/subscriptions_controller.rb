class Api::V1::Customers::SubscriptionsController < ApplicationController
  def create
    customer = Customer.find(params[:customer_id])
    subscription = customer.subscriptions.create!(subscription_params)
    render json: SubscriptionsSerializer.new(subscription), status: 201
  end

  def update
    subscription = Subscription.find(params[:id])
    subscription.update(subscription_params)

    render json: SubscriptionsSerializer.new(subscription), status: 200
  end

  private

  def subscription_params
    params.permit(:title, :price, :status, :frequency)
  end
end
