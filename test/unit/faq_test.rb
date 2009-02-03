require 'test/test_helper'

class FaqTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
  
  test "faq should save wiht question and answer provided" do
    faq = Faq.new(:question => "What?", :answer => "I don't know!")
    assert faq.save
  end
  
  test "faq should not save without question" do
    faq = Faq.new(:answer => "test answer")
    assert !faq.save, "Saved the FAQ without a question"
  end
  
  test "faq should not save without answer" do
    faq = Faq.new(:question => "test question")
    assert !faq.save, "Saved the FAQ without a answer"
  end

  test "faq should save csv tag string as an array" do
    faq = Faq.new(:question => "What?", :answer => "I don't know!", :tag_list => "Tag One, Tag Two, Tag Three")
    assert_equal faq.tag_list, ["Tag One", "Tag Two", "Tag Three"]
    assert faq.save    
  end
end