# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'uploads/new.html.erb', type: :view do
  it 'renders new upload form' do
    expect(controller.request.path_parameters[:action]).to eq('new')
  end
end
