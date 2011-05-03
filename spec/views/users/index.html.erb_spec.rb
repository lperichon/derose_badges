require 'spec_helper'

describe "users/index.html.erb" do
  before(:each) do
    @current_user = mock_user()
    view.stub!(:current_user).and_return(@current_user)

    assign(:users, [
      stub_model(User),
      stub_model(User)
    ])
  end

  it "renders a list of users" do
    pending
  end
end
