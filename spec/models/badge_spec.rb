require 'spec_helper'

describe Badge do
  it { should validate_presence_of :name }
  it { should validate_presence_of :picture_url }
end
