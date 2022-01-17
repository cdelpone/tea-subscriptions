require 'rails_helper'

RSpec.describe Subscription, type: :model do
  describe 'relationship' do
    it { should belong_to :customer }
  end

  describe 'validations' do
    it { should validate_presence_of :title }
    it { should validate_presence_of :price }
    it { should validate_numericality_of :price }
    it { should validate_presence_of :status }
    it { should validate_presence_of :frequency }
  end

  describe 'enum' do
    it 'return statuses hash' do
      result = {"active"=>0, "cancelled"=>1}

      expect(Subscription.statuses).to eq(result)
    end

    it 'returns frequency hash' do
      result = {"weekly"=>0, "monthly"=>1, "annually"=>2}

      expect(Subscription.frequencies).to eq(result)
    end
  end
end
