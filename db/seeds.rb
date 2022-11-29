# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Appointment.destroy_all
Teacher.destroy_all
User.destroy_all

user1 = User.create!(email: 'gui@gui', password: '123123')
teacher = Teacher.create!(user: user1, monday: true, tuesday:false, wednesday:true, thursday:false, friday:true, saturday: false, sunday:false, start_time: '08:00'.to_time, end_time: '18:00'.to_time)

user2 = User.create!(email: 'gui@student', password: '123123')

today = DateTime.now
day = today.day
day2 = (today + 2.days).day
month = today.month
year = today.year

date1 = DateTime.new(year,month,day,13,0,0)
date2 = DateTime.new(year,month,day2,8,0,0)

Appointment.create(description: 'Ruby',  teacher: teacher, user: user2, start_time: date1 ,end_time: date1 + 1.hour)
Appointment.create(description: 'React',  teacher: teacher, user: user2, start_time: date2 ,end_time: date2 + 1.hour)
