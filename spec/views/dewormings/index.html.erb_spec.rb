require 'rails_helper'

RSpec.describe "dewormings/index", type: :view do
  before(:each) do
    assign(:dewormings, [
      Deworming.create!(
        :pet => nil,
        :place => "Place"
      ),
      Deworming.create!(
        :pet => nil,
        :place => "Place"
      )
    ])
  end

  it "renders a list of dewormings" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Place".to_s, :count => 2
  end
end
