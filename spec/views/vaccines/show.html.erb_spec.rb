require 'rails_helper'

RSpec.describe "vaccines/show", type: :view do
  before(:each) do
    @vaccine = assign(:vaccine, Vaccine.create!(
      :pet => nil,
      :type_of_dose => "Type Of Dose",
      :place => "Place"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Type Of Dose/)
    expect(rendered).to match(/Place/)
  end
end
