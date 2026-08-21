# frozen_string_literal: true

require "rails_helper"

RSpec.describe JwtDenylist, type: :model do
  describe "factory" do
    it "is valid" do
      expect(build(:jwt_denylist)).to be_valid
    end
  end
end