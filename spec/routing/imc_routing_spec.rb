require 'rails_helper'

RSpec.describe 'Routing', type: :routing do
 
  it "To create successfully" do
    expect(post: "/api/v1/imc").to route_to("api/v1/imcs#create")
  end

  it "To generate token" do
    expect(post: "/auths").to route_to("auths#create")
  end

end