# app/serializers/article_serializer.rb
class ArticleSerializer < ActiveModel::Serializer
  attributes :id, :title, :minutes_to_read, :author, :content, :preview

  def author
    object.user.username
  end

  def preview
    object.content.split("\n").first
  end
end
