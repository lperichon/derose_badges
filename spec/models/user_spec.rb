require 'spec_helper'

describe User do
  it { should have_and_belong_to_many :badges }

  it { should validate_presence_of :facebook_id }
end
