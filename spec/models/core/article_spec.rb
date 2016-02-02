require 'rails_helper'

module Core
  RSpec.describe Article, type: :model do
    it 'requires title' do
      article = Article.create(title: nil)
      expect(article.errors[:title].any?).to eq(true)
    end
    it 'requires text' do
      article = Article.create(text: nil)
      expect(article.errors[:text].any?).to eq(true)
    end
  end
end
