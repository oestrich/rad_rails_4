require 'spec_helper'
require 'rspec_api_documentation/dsl'

resource "Params" do
  header "Content-Type", "application/json"

  post "/" do
    parameter :name, "Name to say hi to", :required => true, :scope => :user

    let(:name) { "Eric" }

    let(:raw_post) { params.to_json }

    example_request "Saying hi to Eric" do
      expect(response_body).to eq("Hi Eric")
    end
  end
end
