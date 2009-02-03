class Faq < ActiveRecord::Base
  validates_presence_of :question, :answer
  acts_as_taggable
end
