require 'rails_helper'

RSpec.describe "carfares/new", type: :view do
  before(:each) do
    assign(:carfare, Carfare.new())
  end

  it "renders new carfare form" do
    render

    assert_select "form[action=?][method=?]", carfares_path, "post" do
    end
  end
end
