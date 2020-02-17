require 'rails_helper'

RSpec.describe "pets/edit", type: :view do
  before(:each) do
    @pet = assign(:pet, Pet.create!(
      :kind => nil,
      :owner => nil,
      :name => "MyString",
      :birth_day => 1,
      :birth_month => 1,
      :birth_year => 1,
      :breed => nil,
      :picture => "MyString",
      :pet_registration_number => "MyString"
    ))
  end

  it "renders the edit pet form" do
    render

    assert_select "form[action=?][method=?]", pet_path(@pet), "post" do

      assert_select "input[name=?]", "pet[kind_id]"

      assert_select "input[name=?]", "pet[owner_id]"

      assert_select "input[name=?]", "pet[name]"

      assert_select "input[name=?]", "pet[birth_day]"

      assert_select "input[name=?]", "pet[birth_month]"

      assert_select "input[name=?]", "pet[birth_year]"

      assert_select "input[name=?]", "pet[breed_id]"

      assert_select "input[name=?]", "pet[picture]"

      assert_select "input[name=?]", "pet[pet_registration_number]"
    end
  end
end
