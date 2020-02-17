require 'rails_helper'

RSpec.describe "vaccines/index", type: :view do
  before(:each) do
    assign(:vaccines, [
      Vaccine.create!(
        :pet => nil,
        :type_of_dose => "Type Of Dose",
        :place => "Place"
      ),
      Vaccine.create!(
        :pet => nil,
        :type_of_dose => "Type Of Dose",
        :place => "Place"
      )
    ])
  end

  it "renders a list of vaccines" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Type Of Dose".to_s, :count => 2
    assert_select "tr>td", :text => "Place".to_s, :count => 2
  end
end
