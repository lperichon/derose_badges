require 'spec_helper'

describe "badges/edit.html.erb" do
  before(:each) do
    @current_user = mock_user()
    view.stub!(:current_user).and_return(@current_user)

    @badge = assign(:badge, stub_model(Badge,
      :name => "MyString"
    ))
  end

  it "renders the edit badge form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => badges_path(@badge), :method => "post" do
      assert_select "input#badge_name", :name => "badge[name]"
    end
  end
end
