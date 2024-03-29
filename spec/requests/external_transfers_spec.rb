require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/external_transfers", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # ExternalTransfer. As you add validations to ExternalTransfer, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      ExternalTransfer.create! valid_attributes
      get external_transfers_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      external_transfer = ExternalTransfer.create! valid_attributes
      get external_transfer_url(external_transfer)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_external_transfer_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      external_transfer = ExternalTransfer.create! valid_attributes
      get edit_external_transfer_url(external_transfer)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new ExternalTransfer" do
        expect {
          post external_transfers_url, params: { external_transfer: valid_attributes }
        }.to change(ExternalTransfer, :count).by(1)
      end

      it "redirects to the created external_transfer" do
        post external_transfers_url, params: { external_transfer: valid_attributes }
        expect(response).to redirect_to(external_transfer_url(ExternalTransfer.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new ExternalTransfer" do
        expect {
          post external_transfers_url, params: { external_transfer: invalid_attributes }
        }.to change(ExternalTransfer, :count).by(0)
      end

    
      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post external_transfers_url, params: { external_transfer: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested external_transfer" do
        external_transfer = ExternalTransfer.create! valid_attributes
        patch external_transfer_url(external_transfer), params: { external_transfer: new_attributes }
        external_transfer.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the external_transfer" do
        external_transfer = ExternalTransfer.create! valid_attributes
        patch external_transfer_url(external_transfer), params: { external_transfer: new_attributes }
        external_transfer.reload
        expect(response).to redirect_to(external_transfer_url(external_transfer))
      end
    end

    context "with invalid parameters" do
    
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        external_transfer = ExternalTransfer.create! valid_attributes
        patch external_transfer_url(external_transfer), params: { external_transfer: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested external_transfer" do
      external_transfer = ExternalTransfer.create! valid_attributes
      expect {
        delete external_transfer_url(external_transfer)
      }.to change(ExternalTransfer, :count).by(-1)
    end

    it "redirects to the external_transfers list" do
      external_transfer = ExternalTransfer.create! valid_attributes
      delete external_transfer_url(external_transfer)
      expect(response).to redirect_to(external_transfers_url)
    end
  end
end
