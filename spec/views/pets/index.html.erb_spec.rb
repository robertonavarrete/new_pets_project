require 'rails_helper'

RSpec.describe "pets/index", type: :view do
  before(:each) do
    assign(:pets, [
      Pet.create!(
        :kind => nil,
        :owner => nil,
        :name => "Name",
        :birth_day => 2,
        :birth_month => 3,
        :birth_year => 4,
        :breed => nil,
        :picture => "Picture",
        :pet_registration_number => "Pet Registration Number"
      ),
      Pet.create!(
        :kind => nil,
        :owner => nil,
        :name => "Name",
        :birth_day => 2,
        :birth_month => 3,
        :birth_year => 4,
        :breed => nil,
        :picture => "Picture",
        :pet_registration_number => "Pet Registration Number"
      )
    ])
  end

  it "renders a list of pets" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Picture".to_s, :count => 2
    assert_select "tr>td", :text => "Pet Registration Number".to_s, :count => 2
  end
end
