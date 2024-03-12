require 'sinatra'
require_relative 'my_job'

class Relabs < Sinatra::Application
  get '/' do
    'Hello'
  end

  post '/import' do
    MyJob.perform_async
    'Done'
  end

end

run Relabs