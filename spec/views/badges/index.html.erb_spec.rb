require 'spec_helper'

describe "badges/index.html.erb" do
  before(:each) do
    @current_user = mock_user()
    view.stub!(:current_user).and_return(@current_user)

    assign(:badges, [
      stub_model(Badge,
        :name => "Badge 1",
        :picture_url => "url1"
      ),
      stub_model(Badge,
        :name => "Badge 2",
        :picture_url => "url2"
      )
    ])
  end

  it "renders a list of badges" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "ul>li .name", :count => 2
  end
end
