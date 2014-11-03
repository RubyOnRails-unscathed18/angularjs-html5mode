require 'rails_helper'

RSpec.describe "questions/edit", :type => :view do
  before(:each) do
    @question = assign(:question, Question.create!(
      :wording => "MyString",
      :difficulty => 1,
      :answer1 => "MyString",
      :answer2 => "MyString",
      :answer3 => "MyString",
      :answer4 => "MyString"
    ))
  end

  it "renders the edit question form" do
    render

    assert_select "form[action=?][method=?]", question_path(@question), "post" do

      assert_select "input#question_wording[name=?]", "question[wording]"

      assert_select "input#question_difficulty[name=?]", "question[difficulty]"

      assert_select "input#question_answer1[name=?]", "question[answer1]"

      assert_select "input#question_answer2[name=?]", "question[answer2]"

      assert_select "input#question_answer3[name=?]", "question[answer3]"

      assert_select "input#question_answer4[name=?]", "question[answer4]"
    end
  end
end
