require 'spec_helper'

describe PdfRenderer do
  it "registers MIME type of PDF" do
    Mime::PDF.to_sym.should == :pdf
    Mime::PDF.to_s.should == "application/pdf"
  end
end
