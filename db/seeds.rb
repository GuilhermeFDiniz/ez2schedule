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


user1 = User.create!(email: 'guilherme@teacher', password: '123123', first_name: 'Guilherme Teacher', last_name: 'Diniz')
teacher1 = Teacher.create!(user: user1, monday: true, tuesday:true, wednesday:true, thursday:true, friday:true, saturday: false, sunday:false, start_time: '08:00'.to_time, end_time: '18:00'.to_time, price: '200')
user2 = User.create!(email: 'rodolfo@teacher', password: '123123', first_name: 'Rodolfo Teacher', last_name: 'Campos')
teacher2 = Teacher.create!(user: user2, monday: true, tuesday:false, wednesday:true, thursday:false, friday:true, saturday: false, sunday:false, start_time: '06:00'.to_time, end_time: '18:00'.to_time, price: '500')
user3 = User.create!(email: 'juliana@teacher', password: '123123', first_name: 'Juliana Teacher', last_name: 'Roman')
teacher3 = Teacher.create!(user: user3, monday: false, tuesday:false, wednesday:true, thursday:true, friday:true, saturday: false, sunday:false, start_time: '14:00'.to_time, end_time: '20:00'.to_time, price: '250')
user4 = User.create!(email: 'rodrigo@teacher', password: '123123', first_name: 'Rodrigo Teacher', last_name: 'Martins')
teacher4 = Teacher.create!(user: user4, monday: true, tuesday:false, wednesday:true, thursday:false, friday:true, saturday: true, sunday:true, start_time: '08:00'.to_time, end_time: '22:00'.to_time, price: '300')


user5 = User.create!(email: 'student@student', password: '123123', first_name: 'Test Student', last_name: 'TESTER')


html = Category.create!(name: 'HTML', image: 'https://www.shecodes.io/assets/logos/technologies/html-0604a6b4c136a971d7ea5d7f5941216ae895093c636027fc3ac53297fea9a502.png')
css = Category.create!(name: 'CSS', image: 'https://www.shecodes.io/assets/logos/technologies/css-c4554008372faa24096997403ee46f3347a87b8f1636cfb148109bac867c03bb.png')
javascript = Category.create!(name: 'JavaScript', image: 'https://www.shecodes.io/assets/logos/technologies/javascript-66f17d0db91bf422711333a5899e3ce6e952071c8c7b747021029a41fbf42cd7.png')
ruby = Category.create!(name: 'Ruby', image: 'https://www.ruby-lang.org/images/header-ruby-logo.png')
python = Category.create!(name: 'Python', image: 'https://s3.dualstack.us-east-2.amazonaws.com/pythondotorg-assets/media/community/logos/python-logo-only.png')
php = Category.create!(name: 'PHP', image: 'https://www.php.net//images/logos/new-php-logo.svg')
react = Category.create!(name: 'React', image: 'https://www.shecodes.io/assets/logos/technologies/react-600b92c82a6b987573201ac95a30d8fcd6789a803c473337aadb2c2865cb7919.png')
nodejs = Category.create!(name: 'Node.js', image: 'https://logospng.org/wp-content/uploads/node-js.png')
java =Category.create!(name: 'JAVA', image: 'https://static.javatpoint.com/core/images/java-logo3.png')
c = Category.create!(name: 'C', image: 'https://www.britefish.net/wp-content/uploads/2019/07/logo-c-1.png')


TeacherCategory.create(teacher: teacher1, category: ruby)
TeacherCategory.create(teacher: teacher1, category: html)
TeacherCategory.create(teacher: teacher2, category: ruby)
TeacherCategory.create(teacher: teacher2, category: html)
TeacherCategory.create(teacher: teacher2, category: css)
TeacherCategory.create(teacher: teacher3, category: ruby)
TeacherCategory.create(teacher: teacher3, category: html)
TeacherCategory.create(teacher: teacher3, category: javascript)
TeacherCategory.create(teacher: teacher4, category: python)
TeacherCategory.create(teacher: teacher4, category: java)
TeacherCategory.create(teacher: teacher4, category: react)
