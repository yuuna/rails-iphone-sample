require 'spec_helper'

describe 'routing check' do
  describe 'GET root_path' do 
    it "will be routable" do
      expect(:get => "/").to be_routable
    end
    it "root to routing to top#index" do
      expect(:get => "/").to route_to :controller => 'top', :action => 'index'
    end

  end
end
