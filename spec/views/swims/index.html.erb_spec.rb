require 'spec_helper'

describe "swims/index" do
  before(:each) do
    swims = [
      stub_model(Swim,
        :swam_on => Date.today,
        :pool_id => 1,
        :program => "Program",
        :kilometers => 1.000,
        :concession_card => 1,
        :purchase => 5.00
      ),
      stub_model(Swim,
        :swam_on => Date.today,
        :pool_id => 1,
        :program => "Program",
        :kilometers => 1.000,
        :concession_card => 2,
        :purchase => 5.00
      )
    ]
    swims.stub!(:current_page).and_return(1)
    swims.stub!(:total_pages).and_return(1)
    swims.stub!(:limit_value).and_return(1)
    assign(:swims, swims)
  end

  it "renders a list of swims" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    # assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
