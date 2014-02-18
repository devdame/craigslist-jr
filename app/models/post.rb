class Post < ActiveRecord::Base
  belongs_to :category

  def self.get_posts_for(category)
    Category.where(name: category)[0].posts
  end
end
