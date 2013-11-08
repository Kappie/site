require 'spec_helper'

describe "Blog" do

  let(:post) { FactoryGirl.create(:post) }

  it "has correct title" do
    visit blog_path
    page.should have_title("Blog")
  end

  it "displays the post on its own page" do
    visit post_path(post)
    page.should have_content(post.title)
  end

end
