require 'rails_helper'

RSpec.describe 'Subscriptions API' do
  describe 'Customer subscriptions' do
    let!(:customer) { create(:customer) }
    let(:customer_id) { customer.id }

    context 'create subscription' do
      let(:valid_params) { { customer_id: customer_id, title: 'Earl Grey' } }
      before { post '/api/v1/customers/subscriptions', params: valid_params }

      it 'returns successful 201' do
        expect(response).to have_http_status(201)
      end

      it 'returns a subscription' do
        expect(json[:data][:attributes][:title]).to eq('Earl Grey')
      end
    end

    context 'update subscription' do
      let(:subscription) { create :subscription, { customer_id: customer.id } }
      let(:valid_params) { { customer_id: customer_id, title: 'Earl Grey', status: 'cancelled' } }
      before { patch "/api/v1/customers/subscriptions/#{subscription.id}", params: valid_params }

      it 'returns successful response' do
        expect(response).to be_successful
      end

      it 'returns a cancelled subscription' do
        expect(json[:data][:attributes][:status]).to eq('cancelled')
      end
    end

    context 'return all of a customers subscriptions' do
      let!(:customer2) { create(:customer) }
      let!(:cust1_sub) { create(:subscription, customer_id: customer_id) }
      let!(:active_subs) { create_list(:subscription, 5, customer_id: customer2.id) }
      let!(:cancelled_subs) { create_list(:subscription, 5, status: 'cancelled', customer_id: customer2.id) }
      before { get '/api/v1/customers/subscriptions', params: { customer_id: customer2.id } }

      it 'returns all subscriptions' do
        expect(json).not_to be_empty
        expect(json[:data].size).to eq(10)
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end
  end
end
