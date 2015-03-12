require_relative 'app/test_worker'

task :populate do
  1000.times do |index|
    TestWorker.perform_async(index)
  end
end

task :default => [:populate]
