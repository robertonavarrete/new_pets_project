require 'rails_helper'

RSpec.describe "vaccines/edit", type: :view do
  before(:each) do
    @vaccine = assign(:vaccine, Vaccine.create!(
      :pet => nil,
      :type_of_dose => "MyString",
      :place => "MyString"
    ))
  end

  it "renders the edit vaccine form" do
    render

    assert_select "form[action=?][method=?]", vaccine_path(@vaccine), "post" do

      assert_select "input[name=?]", "vaccine[pet_id]"

      assert_select "input[name=?]", "vaccine[type_of_dose]"

      assert_select "input[name=?]", "vaccine[place]"
    end
  end
end
