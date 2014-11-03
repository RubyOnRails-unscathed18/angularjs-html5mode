require 'rails_helper'

RSpec.describe "questions/index", :type => :view do
  before(:each) do
    assign(:questions, [
      Question.create!(
        :wording => "Wording",
        :difficulty => 1,
        :answer1 => "Answer1",
        :answer2 => "Answer2",
        :answer3 => "Answer3",
        :answer4 => "Answer4"
      ),
      Question.create!(
        :wording => "Wording",
        :difficulty => 1,
        :answer1 => "Answer1",
        :answer2 => "Answer2",
        :answer3 => "Answer3",
        :answer4 => "Answer4"
      )
    ])
  end

  it "renders a list of questions" do
    render
    assert_select "tr>td", :text => "Wording".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Answer1".to_s, :count => 2
    assert_select "tr>td", :text => "Answer2".to_s, :count => 2
    assert_select "tr>td", :text => "Answer3".to_s, :count => 2
    assert_select "tr>td", :text => "Answer4".to_s, :count => 2
  end
end
