# frozen_string_literal: true

class Fixture
  def self.example_org(ignore_params: [])
    {
      cassette_name: "example_org",
      match_requests_on: [:method, custom_uri_matcher(ignore_params)],
    }
  end

  def self.post_example_org(ignore_params: [])
    {
      cassette_name: "post_example_org",
      match_requests_on: [:method, custom_uri_matcher(ignore_params)],
    }
  end

  def self.custom_uri_matcher(ignore_params)
    VCR.request_matchers.uri_without_params(*ignore_params)
  end
end
