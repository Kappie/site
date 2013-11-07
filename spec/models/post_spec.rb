require 'spec_helper'

describe Post do
  
  before { @post = Post.new(title: "example title", body: "example body") }

  subject { @post }

  it { should respond_to(:title) }
  it { should respond_to(:body) }

end
