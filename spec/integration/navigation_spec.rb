require 'spec_helper'

describe "test navigation", :type => :request do
  it "checks Rails app" do
    Rails.application.should be_kind_of(Dummy::Application)
  end

  it "sends file to a pdf request" do
    visit home_path
    click_link 'PDF'

    page.response_headers['Content-Transfer-Encoding'].should == 'binary'
    page.response_headers['Content-Disposition'].should == 'attachment; filename="contents.pdf"'
    page.response_headers['Content-Type'].should == 'application/pdf'
    page.body.should =~ /PDF/
    page.body.should =~ /Producer/
  end

  it "interpolates ERB" do
    
  end
end

