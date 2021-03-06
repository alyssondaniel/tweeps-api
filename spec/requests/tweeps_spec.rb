require 'rails_helper'

RSpec.describe 'Tweeps API', type: :request do
  describe 'GET /api/v1/most_relevants' do
    context 'when the request is valid' do
      before { get api_v1_most_relevants_path }
  
      it 'returns most_relevants' do
        expect(json).not_to be_empty
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end
  end

  describe 'GET /api/v1/most_mentions' do
    context 'when the request is valid' do
      before { get api_v1_most_mentions_path }

      it 'returns most_mentions' do
        expect(json).not_to be_empty
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end
  end
end