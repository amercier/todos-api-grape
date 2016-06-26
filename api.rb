module Todos
  class API < Grape::API
    version 'v1', using: :header, vendor: 'oeco'
    format :json

    mount ::Todos::Todos::API
  end
end
