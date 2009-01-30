class ChangeFaqQuestionAndAnswerToTextNonNull < ActiveRecord::Migration
  def self.up
    change_column :faqs, :question, :text, :null => false
    change_column :faqs, :answer, :text, :null => false
  end

  def self.down
    change_column :faqs, :question, :string, :null => true
    change_column :faqs, :answer, :string, :null => true
  end
end
