require 'spec_helper'

describe User do
  before :each do
    @user = User.make
  end

  it "must have an email" do
    @user.email = ''
    @user.should_not be_valid
    @user.email = Faker::Internet.email
    @user.should be_valid
  end


  it "must have a password longer than 8 characters" do
    @user.password = 'foobar'
    @user.password_confirmation = @user.password
    @user.should_not be_valid
    @user.password = 'foobar1234'
    @user.password_confirmation = @user.password
    @user.should be_valid
  end
end
