require 'spec_helper'

describe "attendees/show" do
  before(:each) do
    @attendee = assign(:attendee, stub_model(Attendee,
      :event_id => nil,
      :user_id => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
  end
end
