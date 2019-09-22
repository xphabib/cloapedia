# == Schema Information
#
# Table name: categories
#
#  id          :integer          not null, primary key
#  description :text
#  image       :string
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Category < ApplicationRecord
end
