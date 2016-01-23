Room.destroy_all
%w( Kitchen Living\ Room Hall Bedroom).each do |e|
	Room.create(name: e)
end

puts 'created rooms'
Category.destroy_all
%w( Heating Audio Alarm Lighting).each do |e|
	Category.create(name: e)
end
puts 'created categories'

User.destroy_all
User.create!(email: 'michal@gmail.com', is_admin: true, password: 'qwe123qwe', password_confirmation: 'qwe123qwe')
puts 'created users'