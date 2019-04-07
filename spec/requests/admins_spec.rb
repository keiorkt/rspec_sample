require 'rails_helper'

describe 'Admins', type: :request do
  describe 'GET #index' do
    context 'when admin is logged out' do
      before { get :index }

      it 'redirects to the top page' do
        expect(response).to redirect_to(root_path)
      end
    end

    context 'when admin is logged in' do
      before do
        admin = create :admin
        session[:admin_id] = admin.id
        get :index
      end
      
      it 'return status code 200' do
        expect(response.status).to eq 200
      end

      it 'rendering index template' do
        expect(response).to render_template :index
      end
    end
  end
end
