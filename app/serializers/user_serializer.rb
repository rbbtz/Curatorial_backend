class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :biography, :public
  has_many :exhibitions

  has_many :followed_users, through: :active_relationships, source: :followed_user
  has_many :follower_users, through: :passive_relationships, source: :follower_user

end
