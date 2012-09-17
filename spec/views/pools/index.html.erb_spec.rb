require 'spec_helper'

describe "pools/index" do
  before(:each) do
    pools = [
      stub_model(Pool,
        :name => "Name",
        :city => "City"
      ),
      stub_model(Pool,
        :name => "Name",
        :city => "City"
      )
    ]
    pools.stub!(:current_page).and_return(1)
    pools.stub!(:total_pages).and_return(1)
    pools.stub!(:limit_value).and_return(1)
    assign(:pools, pools)
  end

  it "renders a list of pools" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
  end
end
