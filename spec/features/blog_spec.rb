require 'spec_helper'

describe "Blog" do

  it "has correct title" do
    visit "/blog"
    expect(page).to have_title("Blog")
  end
end
