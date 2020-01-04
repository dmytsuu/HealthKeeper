# frozen_string_literal: true

describe Conversation do
  it { should belong_to(:patient) }
  it { should belong_to(:physician) }
  it { should have_many(:messages).dependent(:destroy) }
end
