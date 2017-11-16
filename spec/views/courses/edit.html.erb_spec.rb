require 'rails_helper'

RSpec.describe "courses/edit", type: :view do
  before(:each) do
    @course = assign(:course, Course.create!(
      :title => "MyString",
      :prof => "MyString"
    ))
  end

  it "renders the edit course form" do
    render

    assert_select "form[action=?][method=?]", course_path(@course), "post" do

      assert_select "input#course_title[name=?]", "course[title]"

      assert_select "input#course_prof[name=?]", "course[prof]"
    end
  end
end
