require 'rails_helper'

RSpec.describe "dewormings/new", type: :view do
  before(:each) do
    assign(:deworming, Deworming.new(
      :pet => nil,
      :place => "MyString"
    ))
  end

  it "renders new deworming form" do
    render

    assert_select "form[action=?][method=?]", dewormings_path, "post" do

      assert_select "input[name=?]", "deworming[pet_id]"

      assert_select "input[name=?]", "deworming[place]"
    end
  end
end
