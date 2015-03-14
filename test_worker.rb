require 'sidekiq'
require 'net/http'

class TestWorker
  include Sidekiq::Worker

  def perform(index)
    uri = URI("#{ENV['BUCKET_URL']}?index=#{index}")
    Net::HTTP.get(uri)
  end
end
