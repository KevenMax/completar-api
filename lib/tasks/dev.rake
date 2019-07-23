namespace :dev do
  desc "TODO"
  task setup: :environment do
    Faker::Config.locale = 'pt-BR'
    100.times do
      
    end
  end

end
