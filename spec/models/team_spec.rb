require 'rails_helper'

describe Team do
  describe "#association" do
    it { should belong_to(:user) }
    it { should belong_to(:project) }
  end
end
