require 'sinatra'

require 'FluidDb'
require 'json'

# Home
class PostRest < Sinatra::Base
  set :static, true
  set :public_folder, File.expand_path('..', __FILE__)

  get '/' do
    send_file settings.public_folder + '/index.htm'
  end

  post '/sql' do
    content_type :json
    FluidDb::Db(ENV[params[:connection_string]])
      .queryForResultset(params[:sql], [])
      .to_json
  end

  get '/rst/:db/:name' do
    content_type :json

    ps = request.env['rack.request.query_hash']

    sql = %{
      SELECT *
      FROM #{params[:name]}
      WHERE 1=1
      #{ps.keys.map { |f| "AND #{f} = ? " }.join('')}
      LIMIT 2000
      ;
    }

    FluidDb::Db(ENV[params[:db]])
      .queryForResultset(sql, ps.values)
      .to_json
  end
end

PostRest.run!
