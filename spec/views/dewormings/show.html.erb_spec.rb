require 'rails_helper'

RSpec.describe "dewormings/show", type: :view do
  before(:each) do
    @deworming = assign(:deworming, Deworming.create!(
      :pet => nil,
      :place => "Place"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Place/)
  end
end
