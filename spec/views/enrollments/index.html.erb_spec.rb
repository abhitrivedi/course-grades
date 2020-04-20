require 'rails_helper'

RSpec.describe "enrollments/index", type: :view do
  before(:each) do
    assign(:enrollments, [
      Enrollment.create!(
        :user_id => 2,
        :course_id => 3
      ),
      Enrollment.create!(
        :user_id => 2,
        :course_id => 3
      )
    ])
  end

  it "renders a list of enrollments" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
