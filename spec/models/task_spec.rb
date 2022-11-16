require 'rails_helper'

describe Task do
  describe "#validation" do
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_presence_of(:status) }
  end 
end