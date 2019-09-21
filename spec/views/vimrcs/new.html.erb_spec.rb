require 'rails_helper'

RSpec.describe "vimrcs/new", type: :view do
  before(:each) do
    assign(:vimrc, Vimrc.new())
  end

  it "renders new vimrc form" do
    render

    assert_select "form[action=?][method=?]", vimrcs_path, "post" do
    end
  end
end
