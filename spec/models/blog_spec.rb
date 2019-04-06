require 'rails_helper'

RSpec.describe Blog, type: :model do
  it 'should return full content' do
    blog = Blog.new(title: 'hello', body: 'My name is keita')
    expect(blog.full_content).to eq 'hello My name is keita'
  end
end

