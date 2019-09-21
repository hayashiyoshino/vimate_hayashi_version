require 'rails_helper'

RSpec.describe "vimrcs/show", type: :view do
  before(:each) do
    @vimrc = assign(:vimrc, Vimrc.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
