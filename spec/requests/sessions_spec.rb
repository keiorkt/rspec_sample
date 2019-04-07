require 'rails_helper'

RSpec.describe "Admins", type: :request do
  describe "GET /logout" do
    it 'return authentication error' do
      get logout_path
      status = get admins_path
      expect(status).to eq 302
    end
  end
  describe "POST /sessions" do
    before do
      Admin.create(email: 'sample@mail.com', password: 'password')
    end
    
    it 'successfully log in as admin' do
      post '/sessions', params: { email: 'sample@mail.com', password: 'password' }
      expect(response.status).to eq 302
    end

    it 'has wrong email' do
      post '/sessions', params: { email: 'aaaa@mail.com', password: 'password' }
      expect(response.status).to eq 200
    end

    it 'has wrong password' do
      post '/sessions', params: { email: 'sample@mail.com', password: 'invalidpassword' }
      expect(response.status).to eq 200
    end
  end
end

