require 'spec_helper'

describe "StaticPages" do

  describe "home" do

    it "has correct title" do
      visit "/"
      expect(page).to have_title("Geert Kapteijns")
      expect(page).not_to have_title("|")
    end
  end

  describe "cursus programmeren" do

    it "has correct title" do
      visit "/cursus_programmeren"
      expect(page).to have_title("Cursus programmeren | Geert Kapteijns")
    end
  end

end
