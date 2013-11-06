require 'spec_helper'

describe User do
	
	it "has a valid factory" do
		expect(FactoryGirl.build(:user)).to be_valid
	end

	it "is valid with a first_name, last_name and email" do
		user = User.new(
			first_name: 'Aaron',
			last_name: 'Sumner',
			email: 'tester@example.com')
		expect(user).to be_valid
	end

	it "is invalid without a first_name" do
		user = FactoryGirl.build(:user, first_name: nil)
		expect(user).to have(1).errors_on(:first_name)
	end
	
	it "is invalid without a last_name" do
		user = FactoryGirl.build(:user, last_name: nil)
		expect(user).to have(1).errors_on(:last_name)
	end
	
	it "is invalid without an email address" do
		user = FactoryGirl.build(:user, email: nil)
		expect(user).to have(1).errors_on(:email)
	end
	
	it "returns a user's full name as a string" do
		user = FactoryGirl.build(:user,
		first_name: "Jane", last_name: "Doe")
		expect(user.name).to eq "Jane Doe"
	end

	it "is invalid with a duplicate email address" do
		FactoryGirl.create(:contact, email: "aaron@example.com")
		contact = FactoryGirl.build(:contact, email: "aaron@example.com")
		expect(contact).to have(1).errors_on(:email)
	end

end
