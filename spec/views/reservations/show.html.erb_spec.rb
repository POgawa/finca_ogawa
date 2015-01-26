require 'rails_helper'

RSpec.describe "reservations/show", :type => :view do
  before(:each) do
    @reservation = assign(:reservation, Reservation.create!(
      :user_id => 1,
      :notes => "Notes"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Notes/)
  end
end
