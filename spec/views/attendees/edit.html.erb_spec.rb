require 'spec_helper'

describe "attendees/edit" do
  before(:each) do
    @attendee = assign(:attendee, stub_model(Attendee,
      :event_id => nil,
      :user_id => nil
    ))
  end

  it "renders the edit attendee form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", attendee_path(@attendee), "post" do
      assert_select "input#attendee_event_id[name=?]", "attendee[event_id]"
      assert_select "input#attendee_user_id[name=?]", "attendee[user_id]"
    end
  end
end
