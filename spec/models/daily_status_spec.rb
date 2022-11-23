require 'rails_helper'

describe DailyStatus do
  describe "#validation" do
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_presence_of(:status_date) }
    it { is_expected.to validate_presence_of(:project) }
    it { is_expected.to validate_presence_of(:project) }
    it { is_expected.to validate_presence_of(:working_hours) }
    it { is_expected.to validate_presence_of(:status) }
    #it { is_expected.to validate_presence_of(:task) }
  end

  describe "#association" do
    it { should belong_to(:user) }
    it { should have_many(:statuses) }
  end

  it { should accepts_nested_attributes_for(:statuses) }
end
