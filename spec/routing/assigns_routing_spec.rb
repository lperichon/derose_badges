require "spec_helper"

describe AssignsController do
  describe "routing" do

    it "recognizes and generates #create" do
      { :post => "/assigns" }.should route_to(:controller => "assigns", :action => "create")
    end

  end
end
