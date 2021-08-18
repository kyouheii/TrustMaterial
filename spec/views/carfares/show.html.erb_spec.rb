require 'rails_helper'

RSpec.describe "carfares/show", type: :view do
  before(:each) do
    @carfare = assign(:carfare, Carfare.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
