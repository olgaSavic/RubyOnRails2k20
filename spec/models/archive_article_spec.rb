require 'rails_helper'

RSpec.describe Article, :type => :model do
  describe "#archive" do
    article = Article.create(title: "Coffee",
                        body: "I love Coffee!",
                        author_id: 1) 
  
    it "archive an article" do
      expect{ article.archive }.to change { article.status.to_sym }.from(:draft).to(:archived)
    end
  end
end