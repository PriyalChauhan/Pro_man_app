require 'rails_helper'

describe Comment do 
  describe "#validation" do
    it { is_expected.to validate_presence_of(:comment) }
  end

  describe "#association" do
    it { should belong_to(:user) }
    it { should belong_to(:commentable) }
  end
end