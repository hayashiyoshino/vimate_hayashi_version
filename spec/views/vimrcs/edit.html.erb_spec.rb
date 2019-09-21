require 'rails_helper'

RSpec.describe "vimrcs/edit", type: :view do
  before(:each) do
    @vimrc = assign(:vimrc, Vimrc.create!())
  end

  it "renders the edit vimrc form" do
    render

    assert_select "form[action=?][method=?]", vimrc_path(@vimrc), "post" do
    end
  end
end
