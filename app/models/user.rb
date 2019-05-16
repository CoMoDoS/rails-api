class User < ApplicationRecord
  has_one :user_detail, foreign_key: 'id_user'
end
