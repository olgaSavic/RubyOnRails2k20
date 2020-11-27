
author = Author.create(id: 1, email: "admin@example.com", crypted_password: "$2a$10$hDKsD5HxxWHWQBULmldjAOhLPI28mCHfEO05Knvp.6MMehNb8zkOe", 
      salt: "GRt1LamnDcamYQynwnmK", created_at: "2020-11-26 16:46:38", updated_at: "2020-11-26 16:46:38")

article = Article.create(id: 1, title: "Coffee", body: "I love Coffee!", 
      created_at: "2020-11-26 20:53:46", updated_at: "2020-11-26 20:54:48", 
      image_file_name: "Thumbnail-Sumerian-Coffee-DSC_6295-200x200.jpg", 
      image_content_type: "image/jpeg", image_file_size: 9996, 
      image_updated_at: "2020-11-26 20:53:46", status: "draft", author_id: 1)

article = Article.create(id: 2, title: "Tea", body: "I love black Tea!", 
      created_at: "2020-11-26 20:53:46", updated_at: "2020-11-26 20:54:48", 
      status: "draft", author_id: 1) 

article = Article.create(id: 3, title: "Orange juice", body: "Orange juice is healthy!", 
      created_at: "2020-11-26 20:53:46", updated_at: "2020-11-26 20:54:48", 
      status: "draft", author_id: 1)     

article = Article.create(id: 4, title: "Water", body: "Water is the healhiest!", 
      created_at: "2020-11-26 20:53:46", updated_at: "2020-11-26 20:54:48", 
      status: "draft", author_id: 1) 

tag = Tag.create(id: 1, name: "morning", 
      created_at: "2020-11-26 20:53:46", updated_at: "2020-11-26 20:54:48")                       

tag = Tag.create(id: 2, name: "lifestyle", 
      created_at: "2020-11-26 20:53:46", updated_at: "2020-11-26 20:54:48") 

tag = Tag.create(id: 3, name: "drink", 
      created_at: "2020-11-26 20:53:46", updated_at: "2020-11-26 20:54:48") 