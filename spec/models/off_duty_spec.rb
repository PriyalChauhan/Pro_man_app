require 'rails_helper'

describe OffDuty do
  describe "validation" do
    it { is_expected.to validate_presence_of(:from_date) }
    it { is_expected.to validate_presence_of(:to_date) }
    it { is_expected.to validate_presence_of(:days) }
    it { is_expected.to validate_presence_of(:mail_to) }
    it { is_expected.to validate_presence_of(:reason) }
  end
end