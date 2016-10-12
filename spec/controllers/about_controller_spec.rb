require 'rails_helper'

describe RusLod::AboutController, type: :controller do
  routes { RusLod::Application.routes }

  context 'get #index' do
    subject! { get :index }

    it 'should be success' do
      expect(response).to be_success
    end
  end

  context 'routing' do
    it 'get /' do
      expect(get: '/').to route_to(
        controller: 'about', action: 'index'
      )
    end

    it 'get /about/index' do
      expect(get: '/about/index').to route_to(
        controller: 'about', action: 'index'
      )
    end
  end
end
