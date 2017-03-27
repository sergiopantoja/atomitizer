# == Schema Information
#
# Table name: clips
#
#  id         :integer          not null, primary key
#  text       :text
#  page_title :string
#  page_url   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Clip < ApplicationRecord
end
