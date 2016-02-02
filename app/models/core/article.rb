module Core
  class Article < ActiveRecord::Base
    validates :title, :text, presence: true
  end
end
