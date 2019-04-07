require 'rails_helper'

describe 'home page', type: :request do
  it 'creates a blog and redirects to the blog index page' do
    get '/blogs/new/'
    expect(response).to render_template(:new)

    post '/blogs', params: { blog: { title: 'hello', body: 'hello world'} } 

    expect(response).to redirect_to(assigns(:blog))
    follow_redirect!

    expect(response).to render_template(:show)
    expect(response.body).to include('Blog was successfully created.')
  end
end

