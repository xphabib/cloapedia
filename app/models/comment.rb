# == Schema Information
#
# Table name: comments
#
#  id          :bigint           not null, primary key
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  blog_id     :integer
#  user_id     :integer
#

class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :blog
end
