require 'spec_helper'

describe Todos::API do
  def app
    Todos::API
  end

  def last_response_body
    return nil if last_response.body == ''
    JSON.parse(last_response.body, symbolize_names: true)
  end

  context 'GET /todos' do
    it 'returns all todos' do
      get '/todos'
      expect(last_response.status).to eq(200)
      expect(last_response_body).to eq [
        { id: 0, title: 'Have tea with the Queen' },
        { id: 1, title: 'Circumnavigate the globe' },
        { id: 2, title: 'Race a cheetah' }
      ]
    end
  end

  context 'POST /todos' do
    it 'inserts a todo' do
      post '/todos', title: 'Climb Mount Everest'
      expect(last_response.status).to eq(201)
      expect(last_response_body).to eq id: 3, title: 'Climb Mount Everest'
    end
  end

  context 'GET /todos/:id' do
    it 'retrieves a todo' do
      get '/todos/0'
      expect(last_response.status).to eq(200)
      expect(last_response_body).to eq id: 0, title: 'Have tea with the Queen'
    end
  end

  context 'PUT /todos/:id' do
    it 'updates a todo' do
      put '/todos/0', title: 'Have tea with the Prince'
      expect(last_response.status).to eq(204)
      expect(last_response_body).to eq nil
    end
  end

  context 'DELETE /todos/:id' do
    it 'deletes a todo' do
      delete '/todos/0'
      expect(last_response.status).to eq(204)
      expect(last_response_body).to eq nil
    end
  end
end
