require 'rails_helper'

describe User do 
  describe "#validation" do 
    it { should validate_presence_of(:avatar) }
    it { should validate_presence_of(:first_name) }
  end

  describe "#association" do
    it { should have_many(:teams).dependent(:delete_all) }
    it { should have_many(:projects).through(:teams) }
    it { should have_many(:comments) }
    it { should have_many(:daily_statuses) }
    it { should have_many(:off_duties) }
    it { should have_many(:reporting_tasks).class_name(:Task).with_foreign_key(:reporter_id) }
    it { should have_many(:assigning_tasks).class_name(:Task).with_foreign_key(:assignee_id) }
    it { should have_one_attached(:avatar) }
  end
end