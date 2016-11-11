# README

Create users with unique code:

["Kai-Arne Reiter", "Ivonne Vallen"].each do |collega|
  User.create!(name: collega,unique_code:Digest::MD5.hexdigest(Time.now.to_s + rand(999).to_s)[0..7])
  end


be rake db:seed:seacon_seed

  


User.create(name:'Kai-Arne Reiter',unique_code:Digest::MD5.hexdigest(Time.now.to_s + rand(999).to_s)[0..7])
User.create(name:'Ivonne Vallen',unique_code:Digest::MD5.hexdigest(Time.now.to_s + rand(999).to_s)[0..7])

