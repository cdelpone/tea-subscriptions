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
  end
end
