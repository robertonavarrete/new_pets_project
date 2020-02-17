require 'rails_helper'

RSpec.describe "vaccines/new", type: :view do
  before(:each) do
    assign(:vaccine, Vaccine.new(
      :pet => nil,
      :type_of_dose => "MyString",
      :place => "MyString"
    ))
  end

  it "renders new vaccine form" do
    render

    assert_select "form[action=?][method=?]", vaccines_path, "post" do

      assert_select "input[name=?]", "vaccine[pet_id]"

      assert_select "input[name=?]", "vaccine[type_of_dose]"

      assert_select "input[name=?]", "vaccine[place]"
    end
  end
end
