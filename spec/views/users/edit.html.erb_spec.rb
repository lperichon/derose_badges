require 'spec_helper'

describe "users/edit.html.erb" do
  before(:each) do
    @current_user = mock_user()
    view.stub!(:current_user).and_return(@current_user)

    @user = assign(:user, stub_model(User))
  end

  it "renders the edit user form" do
    pending
  end
end
