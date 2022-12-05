# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

#Reseting the seeds
puts "Comecei o seu seed tomara que dê tudo certo 🤞"
Appointment.destroy_all
puts "Estou destruindo seus Appointments🤣"
TeacherCategory.destroy_all
puts "Estou destruindo seus TeachersCategories😁"
Teacher.destroy_all
puts "Estou destruindo seus TeachersCategories😊"
User.destroy_all
puts "Estou destruindo seus Usuarios😢"
Category.destroy_all

#Variables with range to populate Teachers Attributes
@seed_boolean = [true, false]
@seed_start = ["06:00", "07:00", "08:00", "09:00", "10:00"]
@seed_end = ["16:00", "17:00", "18:00", "19:00", "20:00"]
@seed_price = [200, 300, 400, 500, 600]

#Categories
puts "Estou criando suas novas categorias ✌️"
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

#Functios do randomize the variables
def rand_day
  @seed_boolean.sample
end

def rand_start_time
  @seed_start.sample
end

def rand_end_time
  @seed_end.sample
end

def rand_price
  @seed_price.sample
end

#Teachers
puts "Estou criando seus novos lindos professores😍"
user1 = User.create!(email: 'guilherme@teacher', password: '123123', first_name: 'Guilherme Teacher', last_name: 'Diniz', about: Faker::Lorem.paragraph(sentence_count: 10, supplemental: true, random_sentences_to_add: 2))
teacher1 = Teacher.create!(user: user1, monday: rand_day, tuesday: rand_day, wednesday: rand_day, thursday:rand_day, friday:rand_day, saturday: rand_day, sunday:rand_day, start_time: rand_start_time, end_time: rand_end_time.to_time, price: rand_price)
user2 = User.create!(email: 'rodolfo@teacher', password: '123123', first_name: 'Rodolfo Teacher', last_name: 'Campos', about: Faker::Lorem.paragraph(sentence_count: 10, supplemental: true, random_sentences_to_add: 2))
teacher2 = Teacher.create!(user: user2, monday: rand_day, tuesday:rand_day, wednesday:rand_day, thursday:rand_day, friday:rand_day, saturday: rand_day, sunday:rand_day, start_time: rand_start_time, end_time: rand_end_time.to_time, price: rand_price)
user3 = User.create!(email: 'juliana@teacher', password: '123123', first_name: 'Juliana Teacher', last_name: 'Roman', about: Faker::Lorem.paragraph(sentence_count: 10, supplemental: true, random_sentences_to_add: 2))
teacher3 = Teacher.create!(user: user3, monday: rand_day, tuesday:rand_day, wednesday:rand_day, thursday:rand_day, friday:rand_day, saturday: rand_day, sunday:rand_day, start_time: rand_start_time, end_time: rand_end_time.to_time, price: rand_price)
user4 = User.create!(email: 'rodrigo@teacher', password: '123123', first_name: 'Rodrigo Teacher', last_name: 'Martins', about: Faker::Lorem.paragraph(sentence_count: 10, supplemental: true, random_sentences_to_add: 2))
teacher4 = Teacher.create!(user: user4, monday: rand_day, tuesday:rand_day, wednesday:rand_day, thursday:rand_day, friday:rand_day, saturday: rand_day, sunday:rand_day, start_time: rand_start_time, end_time: rand_end_time.to_time, price: rand_price)
user5 = User.create!(email: 'sergio@teacher', password: '123123', first_name: 'Sergio Teacher', last_name: 'Kummer', about: Faker::Lorem.paragraph(sentence_count: 10, supplemental: true, random_sentences_to_add: 2))
teacher5 = Teacher.create!(user: user5, monday: rand_day, tuesday:rand_day, wednesday:rand_day, thursday:rand_day, friday:rand_day, saturday: rand_day, sunday:rand_day, start_time: rand_start_time, end_time: rand_end_time.to_time, price: rand_price)
user6 = User.create!(email: 'felipea@teacher', password: '123123', first_name: 'Felipe Teacher', last_name: 'Andrez', about: Faker::Lorem.paragraph(sentence_count: 10, supplemental: true, random_sentences_to_add: 2))
teacher6 = Teacher.create!(user: user6, monday: rand_day, tuesday:rand_day, wednesday:rand_day, thursday:rand_day, friday:rand_day, saturday: rand_day, sunday:rand_day, start_time: rand_start_time, end_time: rand_end_time.to_time, price: rand_price)
user7 = User.create!(email: 'michel@teacher', password: '123123', first_name: 'Michel Teacher', last_name: 'Moutinho', about: Faker::Lorem.paragraph(sentence_count: 10, supplemental: true, random_sentences_to_add: 2))
teacher7 = Teacher.create!(user: user7, monday: rand_day, tuesday:rand_day, wednesday:rand_day, thursday:rand_day, friday:rand_day, saturday: rand_day, sunday:rand_day, start_time: rand_start_time, end_time: rand_end_time.to_time, price: rand_price)
user8 = User.create!(email: 'henrique@teacher', password: '123123', first_name: 'Rodrigo Teacher', last_name: 'Marquest', about: Faker::Lorem.paragraph(sentence_count: 10, supplemental: true, random_sentences_to_add: 2))
teacher8 = Teacher.create!(user: user8, monday: rand_day, tuesday:rand_day, wednesday:rand_day, thursday:rand_day, friday:rand_day, saturday: rand_day, sunday:rand_day, start_time: rand_start_time, end_time: rand_end_time.to_time, price: rand_price)

#Atribuindo Categorias aos professores
puts "Estou atribuindo categorias aos seus professores💻"
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
TeacherCategory.create(teacher: teacher5, category: ruby)
TeacherCategory.create(teacher: teacher5, category: html)
TeacherCategory.create(teacher: teacher6, category: ruby)
TeacherCategory.create(teacher: teacher6, category: html)
TeacherCategory.create(teacher: teacher6, category: css)
TeacherCategory.create(teacher: teacher7, category: ruby)
TeacherCategory.create(teacher: teacher7, category: html)
TeacherCategory.create(teacher: teacher7, category: javascript)
TeacherCategory.create(teacher: teacher8, category: python)
TeacherCategory.create(teacher: teacher8, category: java)
TeacherCategory.create(teacher: teacher8, category: react)

#Students
puts "Estou criando seus Estudantes💖"
user5 = User.create!(email: 'student@student', password: '123123', first_name: 'Test Student', last_name: 'TESTER')

puts "Terminei de fazer tudoo.... Aleluia 🤡"
puts "Instalei um Virus sem querer. Foi mal.😈"
