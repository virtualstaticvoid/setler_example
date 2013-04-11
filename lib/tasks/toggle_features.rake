namespace :app do

  desc "List feature flags"
  task :list_feature_flags => :environment do |feature|
    puts "Feature flags:"
    Settings.all.each do |feature|
      puts "  #{feature.first} => #{feature.last}"
    end
  end

  desc "Toggle the given feature flag"
  task :toggle_feature_flag, [:feature] => :environment do |task, args|
    feature = args[:feature].to_sym
    Settings[feature] = !Settings[feature]
  end

end