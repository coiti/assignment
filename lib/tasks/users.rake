namespace :users do
  task :seed, [:user_count] => :environment do |_t, args|
    FactoryBot.create_list(:user, args.user_count.to_i)
  end
end
