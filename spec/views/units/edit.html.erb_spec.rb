require 'rails_helper'

RSpec.describe "units/edit", :type => :view do
  before(:each) do
    @unit = assign(:unit, Unit.create!(
      :name => "MyString",
      :size => 1
    ))
  end

  it "renders the edit unit form" do
    render

    assert_select "form[action=?][method=?]", unit_path(@unit), "post" do

      assert_select "input#unit_name[name=?]", "unit[name]"

      assert_select "input#unit_size[name=?]", "unit[size]"
    end
  end
end
