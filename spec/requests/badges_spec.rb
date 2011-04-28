require 'spec_helper'

describe "Badges" do
  describe "GET /badges" do
    describe "when confirmed" do
      before do
        controller.stub!(:ensure_authenticated_to_facebook).and_return(false)
        controller.stub!(:current_user).and_return(mock_user(:confirmed? => true))
      end

      it "works! (now write some real specs)" do
        # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
        get badges_path
        response.status.should be(200)
      end
    end
  end
end
