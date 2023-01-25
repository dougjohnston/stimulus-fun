namespace :movie do
  desc 'Generate random movies'
  task :generate_random, [:count] => :environment do |_t, args|
    RandomMovieGenerator.new(count: args[:count].to_i || 1).call
  end
end