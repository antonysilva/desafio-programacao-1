# frozen_string_literal: true

require 'rails_helper'

RSpec.describe UploadsController, type: :controller do
  let(:user) { create(:user) }

  describe 'GET #new' do
    context 'Without authenticated user' do
      it 'redirects user to sign_in' do
        get :new
        expect(response).to redirect_to(new_user_session_path)
      end
    end

    context 'With authenticated user' do
      before { sign_in user }

      it 'responds successfully' do
        expect(response).to be_successful
      end

      it 'renders the new template' do
        get :new
        assert_template 'uploads/new'
      end
    end
  end

  describe '#create' do
    before { sign_in user }

    it 'responds successfully' do
      expect(response).to be_success
    end

    it 'renders the create template' do
      post :create
      assert_template 'uploads/create'
    end

    context 'File Upload' do
      let(:file) do
        Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec', 'support', 'files', 'example_input.tab'))
      end

      let(:params)  { { file: file } }
      let(:request) { post :create, params: params }

      context 'assigned purchases' do
        before { request }

        it 'assigns @purchases with the parsed purchases' do
          expect(assigns(:purchases)).to be_present
        end

        it 'expects @purchases to have at least one record' do
          expect(assigns(:purchases).size).to be >= 1
        end
      end

      it 'persists purchases' do
        expect { request }.to change(Purchase, :count).by(4)
      end
    end
  end
end