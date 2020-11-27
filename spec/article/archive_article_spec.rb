require 'rails_helper'

RSpec.describe ArticlesController, :type => :controller do
  describe "#archive" do
    it "should archive an article" do
      author = Author.new(id: 1, email: "testEmail@gmail.com", crypted_password: "$2a$10$hDKsD5HxxWHWQBULmldjAOhLPI28mCHfEO05Knvp.6MMehNb8zkOe", 
      salt: "GRt1LamnDcamYQynwnmK", created_at: "2020-11-26 16:46:38", updated_at: "2020-11-26 16:46:38")
    
      article = Article.new(id: 10, title: "Coffee", body: "I love Coffee!", 
      created_at: "2020-11-26 20:53:46", updated_at: "2020-11-26 20:54:48", 
      image_file_name: "Thumbnail-Sumerian-Coffee-DSC_6295-200x200.jpg", 
      image_content_type: "image/jpeg", image_file_size: 9996, 
      image_updated_at: "2020-11-26 20:53:46", status: "draft", author_id: 1)
      article.save
      expect { put :archive, params: { :id => article } }.to change { article.reload.status.to_sym }.from(:draft).to(:archived)      
    end
  end  
end