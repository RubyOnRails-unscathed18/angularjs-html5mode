require 'rails_helper'

RSpec.describe "questions/new", :type => :view do
  before(:each) do
    assign(:question, Question.new(
      :wording => "MyString",
      :difficulty => 1,
      :answer1 => "MyString",
      :answer2 => "MyString",
      :answer3 => "MyString",
      :answer4 => "MyString"
    ))
  end

  it "renders new question form" do
    render

    assert_select "form[action=?][method=?]", questions_path, "post" do

      assert_select "input#question_wording[name=?]", "question[wording]"

      assert_select "input#question_difficulty[name=?]", "question[difficulty]"

      assert_select "input#question_answer1[name=?]", "question[answer1]"

      assert_select "input#question_answer2[name=?]", "question[answer2]"

      assert_select "input#question_answer3[name=?]", "question[answer3]"

      assert_select "input#question_answer4[name=?]", "question[answer4]"
    end
  end
end
