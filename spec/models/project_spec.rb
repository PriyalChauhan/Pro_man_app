require 'rails_helper'

describe Project do
  describe "#validation" do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:description) }
  end

  describe "#assciation" do
    it { should have_many(:teams) }
    it { should have_many(:users) }
    it { should have_many(:tasks) }
    it { should have_many(:comments) }
  end

  it { should define_enum_for(:priority) }
end
