require 'spec_helper'

describe "pools/new" do
  before(:each) do
    assign(:pool, stub_model(Pool,
      :name => "MyString",
      :city => "MyString"
    ).as_new_record)
  end

  it "renders new pool form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => pools_path, :method => "post" do
      assert_select "input#pool_name", :name => "pool[name]"
      assert_select "input#pool_city", :name => "pool[city]"
    end
  end
end
