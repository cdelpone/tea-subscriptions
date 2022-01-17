require 'rails_helper'

RSpec.describe Subscription, type: :model do
  describe 'relationship' do
    it { should belong_to :customer }
  end

  describe 'enum' do
    let(:status) { %w[active cancelled] }
    it 'has the right index' do
      status.each_with_index do |sub, index|
        expect(Subscription.statuses[sub]).to eq(index)
      end
    end

    let(:frequency) { %w[weekly monthly annually] }
    it 'has the right index' do
      frequency.each_with_index do |sub, index|
        expect(Subscription.frequencies[sub]).to eq(index)
      end
    end
  end
end
