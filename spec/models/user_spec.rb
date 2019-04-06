
require 'rails_helper'

describe User, type: :model do
  describe '#greet' do
    let(:user) { User.new(name: 'jake', age: age) }
    context 'less or equal to 12' do
      let(:age) { 12 }
      it 'return `I am jake`' do
        expect(user.greet).to eq 'I am jake'
      end
    end
    context 'above or equal to 13' do
      let(:age) { 13 }
      it "return `I'm jake" do
        expect(user.greet).to eq "I'm jake"
      end
    end
  end
  describe '#good_bye' do
    let(:user) { User.new(name: 'jake', age: age) }
    context 'less or equal to 12' do
      let(:age) { 12 }
      it 'return bye bye' do
        expect(user.good_bye).to eq 'bye bye'
      end
    end
    context 'above or equal to 13' do
      let(:age) { 13 }
      it 'return BYE BYE' do
        expect(user.good_bye).to eq 'BYE BYE'
      end
    end
  end
end
