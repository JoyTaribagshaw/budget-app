require 'rails_helper'

RSpec.describe Expenditure, type: :model do
  Rails.application.routes.default_url_options[:host] = 'localhost:3000'

  let(:user) { User.new(name: 'Joy', email: 'joytaribagshaw@gmail.com', password: 'password') }
  let(:expenditure) { Expenditure.new(name: 'Shoe', amount: 3000.0, author: user) }

  before { user.save }
  before { expenditure.save }

  context 'validity:' do
    it 'is valid with required attributes' do
      expect(expenditure).to be_valid
    end
    it 'shows the exact expenditure name' do
      expect(expenditure.name).to eq('Shoe')
    end
    it 'shows the exact expenditure amount' do
      expect(expenditure.amount).to eq(3000.0)
    end
  end

  context 'invialidity:' do
    it 'is not valid when name is not present' do
      expenditure.name = nil
      expect(expenditure).not_to be_valid
    end
    it 'is not valid when amount is not present' do
      expenditure.amount = nil
      expect(expenditure).not_to be_valid
    end
    it 'is not valid when amount is less or equal to zero' do
      expenditure.amount = 0
      expect(expenditure).not_to be_valid
    end
  end
end
