require 'rails_helper'

RSpec.describe "reservations/index", :type => :view do
  before(:each) do
    assign(:reservations, [
      Reservation.create!(
        :user_id => 1,
        :notes => "Notes"
      ),
      Reservation.create!(
        :user_id => 1,
        :notes => "Notes"
      )
    ])
  end

  it "renders a list of reservations" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Notes".to_s, :count => 2
  end
end
