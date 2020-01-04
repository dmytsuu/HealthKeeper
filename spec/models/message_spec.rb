# frozen_string_literal: true

describe Message do
  it { should belong_to(:user) }
  it { should belong_to(:conversation) }
  it { should validate_presence_of(:content) }
end
