require 'rails_helper'

RSpec.describe "carfares/edit", type: :view do
  before(:each) do
    @carfare = assign(:carfare, Carfare.create!())
  end

  it "renders the edit carfare form" do
    render

    assert_select "form[action=?][method=?]", carfare_path(@carfare), "post" do
    end
  end
end
