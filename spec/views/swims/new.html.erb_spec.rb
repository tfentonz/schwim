require 'spec_helper'

describe "swims/new" do
  before(:each) do
    assign(:swim, stub_model(Swim,
      :swam_on => Date.today,
      :pool_id => 1,
      :program => "MyString",
      :kilometers => 1.000,
      :concession_card => 1
    ).as_new_record)
  end

  it "renders new swim form" do
    render

    assert_select "form", :action => swims_path, :method => "post" do
      assert_select "input#swim_swam_on", :name => "swim[swam_on]"
      assert_select "select#swim_pool_id", :name => "swim[pool_id]"
      assert_select "textarea#swim_program", :name => "swim[program]"
      assert_select "input#swim_kilometers", :name => "swim[kilometers]"
      assert_select "input#swim_concession_card", :name => "swim[concession_card]"
      assert_select "input#swim_purchase", :name => "swim[purchase]"
    end
  end
end
