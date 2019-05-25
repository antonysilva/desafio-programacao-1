require 'rails_helper'

RSpec.describe "uploads/create.html.erb", type: :view do
  it 'renders create purchases view' do
    expect(controller.request.path_parameters[:action]).to eq('create')
  end
end
