# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Appointment.destroy_all
TeacherCategory.destroy_all
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


html = Category.create!(name: 'HTML', image: 'https://www.shecodes.io/assets/logos/technologies/html-0604a6b4c136a971d7ea5d7f5941216ae895093c636027fc3ac53297fea9a502.png')

Category.create!(name: 'HTML', image: 'https://www.shecodes.io/assets/logos/technologies/html-0604a6b4c136a971d7ea5d7f5941216ae895093c636027fc3ac53297fea9a502.png')

Category.create!(name: 'CSS', image: 'https://www.shecodes.io/assets/logos/technologies/css-c4554008372faa24096997403ee46f3347a87b8f1636cfb148109bac867c03bb.png')
Category.create!(name: 'JavaScript', image: 'https://www.shecodes.io/assets/logos/technologies/javascript-66f17d0db91bf422711333a5899e3ce6e952071c8c7b747021029a41fbf42cd7.png')
ruby = Category.create!(name: 'Ruby', image: 'https://www.ruby-lang.org/images/header-ruby-logo.png')
Category.create!(name: 'Python', image: 'https://s3.dualstack.us-east-2.amazonaws.com/pythondotorg-assets/media/community/logos/python-logo-only.png')
Category.create!(name: 'PHP', image: 'https://www.php.net//images/logos/new-php-logo.svg')
Category.create!(name: 'React', image: 'https://www.shecodes.io/assets/logos/technologies/react-600b92c82a6b987573201ac95a30d8fcd6789a803c473337aadb2c2865cb7919.png')
Category.create!(name: 'Node.js', image: 'https://logospng.org/wp-content/uploads/node-js.png')
Category.create!(name: 'JAVA', image: 'https://static.javatpoint.com/core/images/java-logo3.png')
Category.create!(name: 'C', image: 'https://www.britefish.net/wp-content/uploads/2019/07/logo-c-1.png')


TeacherCategory.create(teacher:teacher, category: ruby)
TeacherCategory.create(teacher:teacher, category: html)
