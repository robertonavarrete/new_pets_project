require 'rails_helper'

RSpec.describe "dewormings/edit", type: :view do
  before(:each) do
    @deworming = assign(:deworming, Deworming.create!(
      :pet => nil,
      :place => "MyString"
    ))
  end

  it "renders the edit deworming form" do
    render

    assert_select "form[action=?][method=?]", deworming_path(@deworming), "post" do

      assert_select "input[name=?]", "deworming[pet_id]"

      assert_select "input[name=?]", "deworming[place]"
    end
  end
end
