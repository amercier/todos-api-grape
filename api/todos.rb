module Todos
  module Todos
    class API < Grape::API
      resource :todos do
        desc 'Return all todos'
        get do
          [
            { id: 0, title: 'Have tea with the Queen' },
            { id: 1, title: 'Circumnavigate the globe' },
            { id: 2, title: 'Race a cheetah' }
          ]
        end

        desc 'Return a todo'
        params do
          requires :id, type: Integer, desc: 'Todo id'
        end
        route_param :id do
          get do
            { id: 0, title: 'Have tea with the Queen' }
          end
        end

        desc 'Create a todo'
        params do
          requires :title, type: String, desc: 'Todo title'
        end
        post do
          { id: 3, title: 'Climb Mount Everest' }
        end

        desc 'Update a todo'
        params do
          requires :id, type: Integer, desc: 'Todo id'
          requires :title, type: String, desc: 'Todo title'
        end
        put ':id' do
          body false
        end

        desc 'Delete a todo'
        params do
          requires :id, type: String, desc: 'Todo id'
        end
        delete ':id' do
          body false
        end
      end
    end
  end
end
