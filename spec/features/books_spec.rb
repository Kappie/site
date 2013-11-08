require "spec_helper"

describe "Books page" do

  it "has correct title" do
    visit boeken_path
    page.should have_title("Boeken")
  end
end