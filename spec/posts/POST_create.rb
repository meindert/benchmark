describe "POST create" do
  context "with valid attributes" do
    it "creates a new contact" do
      expect{
        post :create, contact: Factory.attributes_for(:contact)
      }.to change(Contact,:count).by(1)
    end

    it "redirects to the new contact" do
      post :create, contact: Factory.attributes_for(:contact)
      response.should redirect_to Contact.last
    end
  end

  context "with invalid attributes" do
    it "does not save the new contact" do
      expect{
        post :create, contact: Factory.attributes_for(:invalid_contact)
      }.to_not change(Contact,:count)
    end

    it "re-renders the new method" do
      post :create, contact: Factory.attributes_for(:invalid_contact)
      response.should render_template :new
    end
  end
end