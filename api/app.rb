require 'sinatra'
require 'sinatra/activerecord'
require 'sinatra/json'
require 'rack/contrib'

ActiveRecord::Base.configurations = YAML.load_file('config/database.yml')
ActiveRecord::Base.establish_connection(:development)

Dir['models/*.rb'].each { |file| require_relative file }
require_relative 'graphql/api_schema.rb'

class GenshinApp < Sinatra::Base
  use Rack::JSONBodyParser

  get '/' do
    'It Works!'
  end

  get '/artifacts' do
    @artifacts = ::Artifact.all
    json @artifacts
  end

  get '/weapons' do
    @weapons = ::Weapon.all
    json @weapons
  end

  get '/characters' do
    @characters = ::Weapon.all
    json @characters
  end

  post '/graphql' do
    result = ApiSchema.execute(
      params[:query],
      variables: params[:variables],
      context: { current_user: nil },
    )
    json result
  end
end
