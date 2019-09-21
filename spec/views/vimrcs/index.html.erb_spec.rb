require 'rails_helper'

RSpec.describe "vimrcs/index", type: :view do
  before(:each) do
    assign(:vimrcs, [
      Vimrc.create!(),
      Vimrc.create!()
    ])
  end

  it "renders a list of vimrcs" do
    render
  end
end
