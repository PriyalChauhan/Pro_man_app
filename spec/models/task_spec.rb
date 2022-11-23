require 'rails_helper'

describe Task do
  describe "#validation" do
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_presence_of(:status) }
  end 

  describe "#association" do
    it { should belong_to(:project) }
    it { should belong_to(:reporter).class_name('User') }
    it { should belong_to(:assignee).class_name('User') }
    it { should have_many(:comments) }
  end

  it { should define_enum_for(:label) }
  it { should have_rich_text(:description) }
  it { should have_many_attached(:documents) }
end