class AuthorSerializer < ActiveModel::Serializer
  attributes :name
  # The author's profile, including only the username, email, bio and avatar_url
  has_one :profile
  has_many :posts, Serializer: AuthorPostSerializer
end
