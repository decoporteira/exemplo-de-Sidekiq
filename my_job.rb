require 'sidekiq'

class MyJob
  include Sidekiq::Job

  def perform
    sleep 5
    puts 'Job concluído'
  end
end
