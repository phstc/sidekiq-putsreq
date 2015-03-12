require 'sidekiq'
require 'net/http'

class TestWorker
  include Sidekiq::Worker

  def perform(index)
    uri = URI("http://putsreq.com/qX0hnwmzqGWit0sgimUG?index=#{index}")
    Net::HTTP.get(uri)
  end
end
