require 'rails_helper'

describe Status do
  describe "#association" do
    it { should belong_to(:daily_status) }
  end
end
