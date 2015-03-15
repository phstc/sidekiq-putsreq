require_relative 'test_worker'

task :populate, [:size] do |t, args|
  size = (args[:size] || 1_000).to_i

  puts "Preparing to send #{size} jobs"

  started_at = Time.now

  size.times do |index|
    TestWorker.perform_async(index)
  end

  puts "Total time: #{(Time.now - started_at) * 1_000}ms"
end

task :default => [:populate]
