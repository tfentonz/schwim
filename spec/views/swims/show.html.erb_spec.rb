require 'spec_helper'

describe "swims/show" do
  before(:each) do
    @swim = assign(:swim, stub_model(Swim,
      :swam_on => Date.today,
      :pool_id => 1,
      :program => "Program"
      # TODO
    ))
  end

  it "renders attributes in <p>" do
    render
    rendered.should match(/Program/)
    # TODO
  end
end
