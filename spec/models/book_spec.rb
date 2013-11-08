require 'spec_helper'

describe Book do
  
  before { @book = Book.new(title: "The Hobbit",
                            rating: 10,
                            isbn: "978-0547928227",
                            review: "Een fantastisch boek",
                            abstract: "Samenvatting voor in de index") }

  subject { @book }

  it { should respond_to(:title) }
  it { should respond_to(:rating) }
  it { should respond_to(:isbn) }
  it { should respond_to(:review) }
  it { should respond_to(:abstract) }
  it { should respond_to(:cover) }
end

