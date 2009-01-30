require 'test/test_helper'

class FaqTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
  
  test "faq should not save without question" do
    faq = Faq.new(:answer => "test answer")
    assert !faq.save, "Saved the FAQ without a question"
  end
  
  test "faq should not save without answer" do
    faq = Faq.new(:question => "test question")
    assert !faq.save, "Saved the FAQ without a answer"
  end
end
