require 'spec_helper'

describe Task do
  it { should allow_mass_assignment_of :title }
  it { should validate_presence_of :title }
end
