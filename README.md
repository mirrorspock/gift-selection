# README

Create users with unique code:

 User.create(name:'Kai-Arne Reiter', email:'KReiter@seaconlogistics.com',unique_code:Digest::MD5.hexdigest(Time.now.to_s + rand(999).to_s)[0..7])
  User.create(name:'Ivonne Vallen', email:'ivallen@seaconlogistics.com',unique_code:Digest::MD5.hexdigest(Time.now.to_s + rand(999).to_s)[0..7])