require 'rails_helper'

RSpec.describe "assignments/edit", type: :view do
  before(:each) do
    @assignment = assign(:assignment, Assignment.create!(
      :name => "MyString",
      :description => "MyText",
      :type => ""
    ))
  end

  it "renders the edit assignment form" do
    render

    assert_select "form[action=?][method=?]", assignment_path(@assignment), "post" do

      assert_select "input#assignment_name[name=?]", "assignment[name]"

      assert_select "textarea#assignment_description[name=?]", "assignment[description]"

      assert_select "input#assignment_type[name=?]", "assignment[type]"
    end
  end
end
