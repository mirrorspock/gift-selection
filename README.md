# README

Create users with unique code:

 User.create(name:'Ivonne', email:'test@seacon.nl',unique_code:Digest::MD5.hexdigest(Time.now.to_s + rand(999).to_s)[0..7])