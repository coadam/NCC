require 'rails_helper'

RSpec.describe QuotationsController, type: :controller do
  describe 'GET quotatons/new' do
    it 'exposes form to create new quotation' do
      get :new
      expect(response).to be_successful
      assert_template 'quotations/new'
    end
  end

  describe 'POST quotations' do
    context "for no quotation attributes given" do
      it 'renders new template' do
        post :create, params: { quotation: { foo: 'bar' } }
        expect(response).to be_successful
        assert_template 'quotations/new'
      end
    end

    context "for quotation attributes given" do
      it 'renders new template' do
        post :create, params: { quotation: { content: 'foobar'} }
        expect(response).to redirect_to quotations_url
        expect(flash[:notice]).to be_present
      end
    end
  end

  describe 'GET quoatations' do
    it 'lists all the quotations' do
      get :index
      expect(response).to be_successful
      assert_template 'quotations/index'
    end
  end
end
