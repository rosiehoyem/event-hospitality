require 'spec_helper'

describe "attendees/index" do
  before(:each) do
    assign(:attendees, [
      stub_model(Attendee,
        :event_id => nil,
        :user_id => nil
      ),
      stub_model(Attendee,
        :event_id => nil,
        :user_id => nil
      )
    ])
  end

  it "renders a list of attendees" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
