require './spec/spec_helper'

describe ExampleController do
  def app
    ExampleController
  end

  context 'Home' do
    it 'is success' do
      get '/home'
      expect(last_response).to be_ok
    end
  end
end