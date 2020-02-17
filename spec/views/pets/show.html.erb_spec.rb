require 'rails_helper'

RSpec.describe "pets/show", type: :view do
  before(:each) do
    @pet = assign(:pet, Pet.create!(
      :kind => nil,
      :owner => nil,
      :name => "Name",
      :birth_day => 2,
      :birth_month => 3,
      :birth_year => 4,
      :breed => nil,
      :picture => "Picture",
      :pet_registration_number => "Pet Registration Number"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Picture/)
    expect(rendered).to match(/Pet Registration Number/)
  end
end
