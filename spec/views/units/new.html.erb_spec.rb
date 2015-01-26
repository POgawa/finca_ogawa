require 'rails_helper'

RSpec.describe "units/new", :type => :view do
  before(:each) do
    assign(:unit, Unit.new(
      :name => "MyString",
      :size => 1
    ))
  end

  it "renders new unit form" do
    render

    assert_select "form[action=?][method=?]", units_path, "post" do

      assert_select "input#unit_name[name=?]", "unit[name]"

      assert_select "input#unit_size[name=?]", "unit[size]"
    end
  end
end
