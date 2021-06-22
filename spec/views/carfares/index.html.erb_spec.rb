require 'rails_helper'

RSpec.describe "carfares/index", type: :view do
  before(:each) do
    assign(:carfares, [
      Carfare.create!(),
      Carfare.create!()
    ])
  end

  it "renders a list of carfares" do
    render
  end
end
