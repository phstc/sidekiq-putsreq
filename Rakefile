require_relative 'test_worker'

task :populate do
  started_at = Time.now
  1000.times do |index|
    TestWorker.perform_async(index)
  end

  puts "Total time: #{(Time.now - started_at) * 1000}ms"
end

task :default => [:populate]
