require 'spec_helper'

describe "terminals/edit" do
  before(:each) do
    @terminal = assign(:terminal, stub_model(Terminal,
      :name => "MyString",
      :terminal_master => nil,
      :volume => 1,
      :color => nil,
      :phone_number => "MyString",
      :updated_os => nil,
      :wifi => 1
    ))
  end

  it "renders the edit terminal form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", terminal_path(@terminal), "post" do
      assert_select "input#terminal_name[name=?]", "terminal[name]"
      assert_select "input#terminal_terminal_master[name=?]", "terminal[terminal_master]"
      assert_select "input#terminal_volume[name=?]", "terminal[volume]"
      assert_select "input#terminal_color[name=?]", "terminal[color]"
      assert_select "input#terminal_phone_number[name=?]", "terminal[phone_number]"
      assert_select "input#terminal_updated_os[name=?]", "terminal[updated_os]"
      assert_select "input#terminal_wifi[name=?]", "terminal[wifi]"
    end
  end
end
