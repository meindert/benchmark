require 'spec_helper'

describe "POST create" do

  before :each do
    @file = fixture_file_upload('spec/support/CHRYSLER.csv', 'text/csv')
  end

  it "can upload a license" do
    pending "add some examples to (or delete) #{__FILE__}"
   # post :uploadLicense, :upload => @file
   # response.should be_success
  end

  #it "should upload an image" do
   # Image.delete_all
   #uploader = mock_uploader 'spec/support/CHRYSLER.csv'
   # post :update, {
   #     :id => @object.id,
   #     :wibble => { :image_file => uploader }
   # }
   # response.should be_success
   # Image.count.should == 1
   # i = Image.find(:first)
   # i.filename.should == uploader.original_path
   # i.contents.length.should == uploader.size
  #end


  #def mock_uploader(file, type = 'text/csv')
  #  filename = "%s/%s" % [ File.dirname(__FILE__), file ]
  #  uploader = ActionController::UploadedStringIO.new
  #  uploader.original_path = filename
  #  uploader.content_type = type
  ##  def uploader.read
   #   File.read(original_path)
   # end
   # def uploader.size
   #   File.stat(original_path).size
   # end
   # uploader
  #e#nd
end
