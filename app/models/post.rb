class Post < ActiveRecord::Base

  def self.search(query)
    where("title LIKE ? OR body LIKE ? OR tag LIKE ?", "%#{query}%", "%#{query}%", "%#{query}%")
  end
end
