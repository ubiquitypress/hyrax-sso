# frozen_string_literal: true

RSpec.describe Hyrax::Sso do
  before do
    described_class.configure do |config|
    end
  end

  describe "Auth service" do
    it "generates authorisation_url" do
      service = Hyrax::Sso::AuthService.new(host: "up.repo")
      expect(service.generate_authorisation_url).to start_with "https://api.workos.com/sso/authorize?client_id"
    end

    # consider adding negative test cases
    it "raises error when host is omitted" do
      expect { Hyrax::Sso::AuthService.new }.to raise_error(ArgumentError)
    end
  end
end
