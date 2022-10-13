require 'rails_helper'
# Ensure that blog post content is at least 10 characters
RSpec.describe Post, type: :model do

  it 'is not valid without a title' do
    post = Post.create(content: 'Here is my content.')
    expect(post.errors[:title]).to_not be_empty
  end

  it 'is not valid without content' do
    post = Post.create(title: 'Here is my title')
    expect(post.errors[:content]).to_not be_empty
  end

  it 'must have a unique title' do
    Post.create(title: 'Here is my title', content: 'Here is my content.')
    post = Post.create(title: 'Here is my title', content: 'Here is my content.')
    expect(post.errors[:title]).to_not be_empty
  end

  it 'must contain a title with at least 4 characters' do
    post = Post.create(title: 'Hi', content: 'Here is my content.')
    expect(post.errors[:title]).to_not be_empty
  end

  it 'must contain content with at least 10 characters' do
    post = Post.create(title: 'Here is my title', content: 'Content')
    expect(post.errors[:content]).to_not be_empty
  end

end
