require 'rails_helper'

RSpec.describe "assignments/new", type: :view do
  before(:each) do
    assign(:assignment, Assignment.new(
      :name => "MyString",
      :description => "MyText",
      :type => ""
    ))
  end

  it "renders new assignment form" do
    render

    assert_select "form[action=?][method=?]", assignments_path, "post" do

      assert_select "input#assignment_name[name=?]", "assignment[name]"

      assert_select "textarea#assignment_description[name=?]", "assignment[description]"

      assert_select "input#assignment_type[name=?]", "assignment[type]"
    end
  end
end
