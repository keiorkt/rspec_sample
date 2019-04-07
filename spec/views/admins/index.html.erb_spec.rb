require 'rails_helper'

RSpec.describe "admins/index", type: :view do
  before(:each) do
    assign(:admins, [
      Admin.create!(
        :email => "Email",
        :password => ""
      ),
      Admin.create!(
        :email => "Email",
        :password => ""
      )
    ])
  end

  it "renders a list of admins" do
    render
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
