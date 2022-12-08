# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

#Reseting the seeds
Message.destroy_all
Chatroom.destroy_all
puts "Comecei o seu seed tomara que dê tudo certo 🤞"
puts "Estou destruindo suas Mensagens🤣"
Message.destroy_all
puts "Estou destruindo seus Chatrooms🤣"
Chatroom.destroy_all
puts "Estou destruindo seus Appointments🤣"
Appointment.destroy_all
puts "Estou destruindo seus TeachersCategories😁"
TeacherCategory.destroy_all
puts "Estou destruindo seus TeachersCategories😊"
Teacher.destroy_all
puts "Estou destruindo seus Usuarios😢"
User.destroy_all
puts "Estou destruindo suas Categorias😢"
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

#Functions do randomize the variables
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
user1_image = URI.open('https://res.cloudinary.com/dqm4dcsvx/image/upload/v1670510043/Avatar/guilherme_pbhxlz.jpg')
user1 = User.create!(email: 'guilherme@teacher', password: '123123', first_name: 'Guilherme', last_name: 'Diniz', about: Faker::Lorem.paragraph(sentence_count: 10, supplemental: true, random_sentences_to_add: 2))
user1.avatar_image.attach(io: user1_image, filename: 'guilherme.jpg', content_type: 'image/jpg')
teacher1_video = URI.open('https://res.cloudinary.com/dqm4dcsvx/video/upload/v1670247706/Videos/Guilherme_tajbib.mp4')
teacher1 = Teacher.create!(user: user1, monday: rand_day, tuesday: rand_day, wednesday: rand_day, thursday:rand_day, friday:rand_day, saturday: rand_day, sunday:rand_day, start_time: rand_start_time, end_time: rand_end_time.to_time, price: rand_price)
teacher1.teacher_video.attach(io: teacher1_video, filename: 'guilherme.mp4', content_type: 'video/mp4')

user2_image = URI.open('https://res.cloudinary.com/dqm4dcsvx/image/upload/v1670510042/Avatar/rodolfo_xesejr.jpg')
user2 = User.create!(email: 'rodolfo@teacher', password: '123123', first_name: 'Rodolfo', last_name: 'Campos', about: Faker::Lorem.paragraph(sentence_count: 10, supplemental: true, random_sentences_to_add: 2))
user2.avatar_image.attach(io: user2_image, filename: 'rodolfo.jpg', content_type: 'image/jpg')

teacher2_video = URI.open('https://res.cloudinary.com/dqm4dcsvx/video/upload/v1670247745/Videos/Rodolfo_rijmfl.mp4')
teacher2 = Teacher.create!(user: user2, monday: rand_day, tuesday:rand_day, wednesday:rand_day, thursday:rand_day, friday:rand_day, saturday: rand_day, sunday:rand_day, start_time: rand_start_time, end_time: rand_end_time.to_time, price: rand_price)
teacher2.teacher_video.attach(io: teacher2_video, filename: 'rodolfo.mp4', content_type: 'video/mp4')

user3_image = URI.open('https://res.cloudinary.com/dqm4dcsvx/image/upload/v1670510043/Avatar/juliana_dump7m.png')
user3 = User.create!(email: 'juliana@teacher', password: '123123', first_name: 'Juliana', last_name: 'Roman', about: Faker::Lorem.paragraph(sentence_count: 10, supplemental: true, random_sentences_to_add: 2))
user3.avatar_image.attach(io: user3_image, filename: 'juliana.png', content_type: 'image/png')
teacher3_video = URI.open('https://res.cloudinary.com/dqm4dcsvx/video/upload/v1670247715/Videos/Juliana_k0wfsy.mp4')
teacher3 = Teacher.create!(user: user3, monday: rand_day, tuesday:rand_day, wednesday:rand_day, thursday:rand_day, friday:rand_day, saturday: rand_day, sunday:rand_day, start_time: rand_start_time, end_time: rand_end_time.to_time, price: rand_price)
teacher3.teacher_video.attach(io: teacher3_video, filename: 'juliana.mp4', content_type: 'video/mp4')

user4_image = URI.open('https://res.cloudinary.com/dqm4dcsvx/image/upload/v1670510042/Avatar/rodrigo_csya4z.jpg')
user4 = User.create!(email: 'rodrigo@teacher', password: '123123', first_name: 'Rodrigo', last_name: 'Martins', about: Faker::Lorem.paragraph(sentence_count: 10, supplemental: true, random_sentences_to_add: 2))
user4.avatar_image.attach(io: user4_image, filename: 'rodrigo.jpg', content_type: 'image/jpg')
teacher4_video = URI.open('https://res.cloudinary.com/dqm4dcsvx/video/upload/v1670247751/Videos/Rodrigo_qrwifz.mp4')
teacher4 = Teacher.create!(user: user4, monday: rand_day, tuesday:rand_day, wednesday:rand_day, thursday:rand_day, friday:rand_day, saturday: rand_day, sunday:rand_day, start_time: rand_start_time, end_time: rand_end_time.to_time, price: rand_price)
teacher4.teacher_video.attach(io: teacher4_video, filename: 'rodrigo.mp4', content_type: 'video/mp4')

user5_image = URI.open('https://res.cloudinary.com/dqm4dcsvx/image/upload/v1670510042/Avatar/sergio_cgmrhi.jpg')
user5 = User.create!(email: 'sergio@teacher', password: '123123', first_name: 'Sergio', last_name: 'Kummer', about: Faker::Lorem.paragraph(sentence_count: 10, supplemental: true, random_sentences_to_add: 2))
user5.avatar_image.attach(io: user5_image, filename: 'sergio.jpg', content_type: 'image/jpg')
teacher5_video = URI.open('https://res.cloudinary.com/dqm4dcsvx/video/upload/v1670247754/Videos/Sergio_mbnygu.mp4')
teacher5 = Teacher.create!(user: user5, monday: rand_day, tuesday:rand_day, wednesday:rand_day, thursday:rand_day, friday:rand_day, saturday: rand_day, sunday:rand_day, start_time: rand_start_time, end_time: rand_end_time.to_time, price: rand_price)
teacher5.teacher_video.attach(io: teacher5_video, filename: 'sergio.mp4', content_type: 'video/mp4')

user6_image = URI.open('https://res.cloudinary.com/dqm4dcsvx/image/upload/v1670510043/Avatar/felipe_m9wakf.jpg')
user6 = User.create!(email: 'felipea@teacher', password: '123123', first_name: 'Felipe', last_name: 'Andrez', about: Faker::Lorem.paragraph(sentence_count: 10, supplemental: true, random_sentences_to_add: 2))
user6.avatar_image.attach(io: user6_image, filename: 'felipe.jpg', content_type: 'image/jpg')
teacher6_video = URI.open('https://res.cloudinary.com/dqm4dcsvx/video/upload/v1670247698/Videos/Felipe_hwbux7.mp4')
teacher6 = Teacher.create!(user: user6, monday: rand_day, tuesday:rand_day, wednesday:rand_day, thursday:rand_day, friday:rand_day, saturday: rand_day, sunday:rand_day, start_time: rand_start_time, end_time: rand_end_time.to_time, price: rand_price)
teacher6.teacher_video.attach(io: teacher6_video, filename: 'felipe.mp4', content_type: 'video/mp4')

user7_image = URI.open('https://res.cloudinary.com/dqm4dcsvx/image/upload/v1670510043/Avatar/michel_ca8zd1.jpg')
user7 = User.create!(email: 'michel@teacher', password: '123123', first_name: 'Michel', last_name: 'Moutinho', about: Faker::Lorem.paragraph(sentence_count: 10, supplemental: true, random_sentences_to_add: 2))
user7.avatar_image.attach(io: user7_image, filename: 'michel.jpg', content_type: 'image/jpg')
teacher7_video = URI.open('https://res.cloudinary.com/dqm4dcsvx/video/upload/v1670247728/Videos/Michel_tkuuwq.mp4')
teacher7 = Teacher.create!(user: user7, monday: rand_day, tuesday:rand_day, wednesday:rand_day, thursday:rand_day, friday:rand_day, saturday: rand_day, sunday:rand_day, start_time: rand_start_time, end_time: rand_end_time.to_time, price: rand_price)
teacher7.teacher_video.attach(io: teacher7_video, filename: 'michel.mp4', content_type: 'video/mp4')

user8_image = URI.open('https://res.cloudinary.com/dqm4dcsvx/image/upload/v1670510043/Avatar/henrique_fcrd1v.jpg')
user8 = User.create!(email: 'henrique@teacher', password: '123123', first_name: 'Henrique', last_name: 'Marques', about: Faker::Lorem.paragraph(sentence_count: 10, supplemental: true, random_sentences_to_add: 2))
user8.avatar_image.attach(io: user8_image, filename: 'henrique.jpg', content_type: 'image/jpg')
teacher8_video = URI.open('https://res.cloudinary.com/dqm4dcsvx/video/upload/v1670247713/Videos/Henrique_ttuysk.mp4')
teacher8 = Teacher.create!(user: user8, monday: rand_day, tuesday:rand_day, wednesday:rand_day, thursday:rand_day, friday:rand_day, saturday: rand_day, sunday:rand_day, start_time: rand_start_time, end_time: rand_end_time.to_time, price: rand_price)
teacher8.teacher_video.attach(io: teacher8_video, filename: 'henrique.mp4', content_type: 'video/mp4')

user9_image = URI.open('https://res.cloudinary.com/dqm4dcsvx/image/upload/v1670510042/Avatar/afonso_xglj0j.jpg')
user9 = User.create!(email: 'afonso@teacher', password: '123123', first_name: 'Afonso', last_name: 'Garcia', about: Faker::Lorem.paragraph(sentence_count: 10, supplemental: true, random_sentences_to_add: 2))
user9.avatar_image.attach(io: user9_image, filename: 'afonso.jpg', content_type: 'image/jpg')
teacher9_video = URI.open('https://res.cloudinary.com/dqm4dcsvx/video/upload/v1670246710/Videos/Afonso_jv3xlk.mp4')
teacher9 = Teacher.create!(user: user9, monday: rand_day, tuesday:rand_day, wednesday:rand_day, thursday:rand_day, friday:rand_day, saturday: rand_day, sunday:rand_day, start_time: rand_start_time, end_time: rand_end_time.to_time, price: rand_price)
teacher9.teacher_video.attach(io: teacher9_video, filename: 'afonso.mp4', content_type: 'video/mp4')

user10_image = URI.open('https://res.cloudinary.com/dqm4dcsvx/image/upload/v1670510043/Avatar/alecio_pitbm7.jpg')
user10 = User.create!(email: 'alecio@teacher', password: '123123', first_name: 'Alecio', last_name: 'Filho', about: Faker::Lorem.paragraph(sentence_count: 10, supplemental: true, random_sentences_to_add: 2))
user10.avatar_image.attach(io: user10_image, filename: 'alecio.jpg', content_type: 'image/jpg')
teacher10_video = URI.open('https://res.cloudinary.com/dqm4dcsvx/video/upload/v1670247677/Videos/Alecio_uswxkz.mp4')
teacher10 = Teacher.create!(user: user10, monday: rand_day, tuesday:rand_day, wednesday:rand_day, thursday:rand_day, friday:rand_day, saturday: rand_day, sunday:rand_day, start_time: rand_start_time, end_time: rand_end_time.to_time, price: rand_price)
teacher10.teacher_video.attach(io: teacher10_video, filename: 'alecio.mp4', content_type: 'video/mp4')

user11_image = URI.open('https://res.cloudinary.com/dqm4dcsvx/image/upload/v1670510042/Avatar/breno_pinpjf.jpg')
user11 = User.create!(email: 'breno@teacher', password: '123123', first_name: 'Breno', last_name: 'Silva', about: Faker::Lorem.paragraph(sentence_count: 10, supplemental: true, random_sentences_to_add: 2))
user11.avatar_image.attach(io: user11_image, filename: 'breno.jpg', content_type: 'image/jpg')
teacher11_video = URI.open('https://res.cloudinary.com/dqm4dcsvx/video/upload/v1670247685/Videos/Breno_ehdon8.mp4')
teacher11 = Teacher.create!(user: user11, monday: rand_day, tuesday:rand_day, wednesday:rand_day, thursday:rand_day, friday:rand_day, saturday: rand_day, sunday:rand_day, start_time: rand_start_time, end_time: rand_end_time.to_time, price: rand_price)
teacher11.teacher_video.attach(io: teacher11_video, filename: 'breno.mp4', content_type: 'video/mp4')

user12_image = URI.open('https://res.cloudinary.com/dqm4dcsvx/image/upload/v1670510043/Avatar/felipe_1_vclbov.jpg')
user12 = User.create!(email: 'felipe@teacher', password: '123123', first_name: 'Felipe', last_name: 'Kummer', about: Faker::Lorem.paragraph(sentence_count: 10, supplemental: true, random_sentences_to_add: 2))
user12.avatar_image.attach(io: user12_image, filename: 'felipe(1).jpg', content_type: 'image/jpg')
teacher12_video = URI.open('https://res.cloudinary.com/dqm4dcsvx/video/upload/v1670247701/Videos/Felipe_1_mp4or6.mp4')
teacher12 = Teacher.create!(user: user12, monday: rand_day, tuesday:rand_day, wednesday:rand_day, thursday:rand_day, friday:rand_day, saturday: rand_day, sunday:rand_day, start_time: rand_start_time, end_time: rand_end_time.to_time, price: rand_price)
teacher12.teacher_video.attach(io: teacher12_video, filename: 'felipe(1).mp4', content_type: 'video/mp4')

user13_image = URI.open('https://res.cloudinary.com/dqm4dcsvx/image/upload/v1670510043/Avatar/fernanda_xyikaa.jpg')
user13 = User.create!(email: 'fernanda@teacher', password: '123123', first_name: 'Fernanda', last_name: 'Yamamoto', about: Faker::Lorem.paragraph(sentence_count: 10, supplemental: true, random_sentences_to_add: 2))
user13.avatar_image.attach(io: user13_image, filename: 'fernanda.jpg', content_type: 'image/jpg')
teacher13_video = URI.open('https://res.cloudinary.com/dqm4dcsvx/video/upload/v1670247693/Videos/Fernanda_gxbvjx.mp4')
teacher13 = Teacher.create!(user: user13, monday: rand_day, tuesday:rand_day, wednesday:rand_day, thursday:rand_day, friday:rand_day, saturday: rand_day, sunday:rand_day, start_time: rand_start_time, end_time: rand_end_time.to_time, price: rand_price)
teacher13.teacher_video.attach(io: teacher13_video, filename: 'fernanda.mp4', content_type: 'video/mp4')

user14_image = URI.open('https://res.cloudinary.com/dqm4dcsvx/image/upload/v1670510041/Avatar/milena_ybhvfc.jpg')
user14 = User.create!(email: 'milena@teacher', password: '123123', first_name: 'Milena', last_name: 'Domingues', about: Faker::Lorem.paragraph(sentence_count: 10, supplemental: true, random_sentences_to_add: 2))
user14.avatar_image.attach(io: user14_image, filename: 'milena.jpg', content_type: 'image/jpg')
teacher14_video = URI.open('https://res.cloudinary.com/dqm4dcsvx/video/upload/v1670247725/Videos/Milena_ftgk0v.mp4')
teacher14 = Teacher.create!(user: user14, monday: rand_day, tuesday:rand_day, wednesday:rand_day, thursday:rand_day, friday:rand_day, saturday: rand_day, sunday:rand_day, start_time: rand_start_time, end_time: rand_end_time.to_time, price: rand_price)
teacher14.teacher_video.attach(io: teacher14_video, filename: 'milena.mp4', content_type: 'video/mp4')

user15_image = URI.open('https://res.cloudinary.com/dqm4dcsvx/image/upload/v1670510042/Avatar/raquel_au9wmj.png')
user15 = User.create!(email: 'raquel@teacher', password: '123123', first_name: 'Raquel', last_name: 'Ciusz', about: Faker::Lorem.paragraph(sentence_count: 10, supplemental: true, random_sentences_to_add: 2))
user15.avatar_image.attach(io: user15_image, filename: 'raquel.png', content_type: 'image/png')
teacher15_video = URI.open('https://res.cloudinary.com/dqm4dcsvx/video/upload/v1670247736/Videos/Raquel_l6xyn8.mp4')
teacher15 = Teacher.create!(user: user15, monday: rand_day, tuesday:rand_day, wednesday:rand_day, thursday:rand_day, friday:rand_day, saturday: rand_day, sunday:rand_day, start_time: rand_start_time, end_time: rand_end_time.to_time, price: rand_price)
teacher15.teacher_video.attach(io: teacher15_video, filename: 'raquel.mp4', content_type: 'video/mp4')

user16_image = URI.open('https://res.cloudinary.com/dqm4dcsvx/image/upload/v1670510042/Avatar/renoir_qotfe1.jpg')
user16 = User.create!(email: 'renoir@teacher', password: '123123', first_name: 'Renoir', last_name: 'Lucena', about: Faker::Lorem.paragraph(sentence_count: 10, supplemental: true, random_sentences_to_add: 2))
user16.avatar_image.attach(io: user16_image, filename: 'renoir.jpg', content_type: 'image/jpg')
teacher16_video = URI.open('https://res.cloudinary.com/dqm4dcsvx/video/upload/v1670247840/Videos/Renoir_bctf8a.mp4')
teacher16 = Teacher.create!(user: user16, monday: rand_day, tuesday:rand_day, wednesday:rand_day, thursday:rand_day, friday:rand_day, saturday: rand_day, sunday:rand_day, start_time: rand_start_time, end_time: rand_end_time.to_time, price: rand_price)
teacher16.teacher_video.attach(io: teacher16_video, filename: 'renoir.mp4', content_type: 'video/mp4')

user17_image = URI.open('https://res.cloudinary.com/dqm4dcsvx/image/upload/v1670510042/Avatar/tais_btblun.jpg')
user17 = User.create!(email: 'tais@teacher', password: '123123', first_name: 'Tais', last_name: 'Pereira', about: Faker::Lorem.paragraph(sentence_count: 10, supplemental: true, random_sentences_to_add: 2))
user17.avatar_image.attach(io: user17_image, filename: 'tais.jpg', content_type: 'image/jpg')
teacher17_video = URI.open('https://res.cloudinary.com/dqm4dcsvx/video/upload/v1670247758/Videos/Tais_pip2gq.mp4')
teacher17 = Teacher.create!(user: user17, monday: rand_day, tuesday:rand_day, wednesday:rand_day, thursday:rand_day, friday:rand_day, saturday: rand_day, sunday:rand_day, start_time: rand_start_time, end_time: rand_end_time.to_time, price: rand_price)
teacher17.teacher_video.attach(io: teacher17_video, filename: 'tais.mp4', content_type: 'video/mp4')

user18_image = URI.open('https://res.cloudinary.com/dqm4dcsvx/image/upload/v1670510044/Avatar/laura_q4ibfk.jpg')
user18 = User.create!(email: 'laura@teacher', password: '123123', first_name: 'Laura', last_name: 'Amaro', about: Faker::Lorem.paragraph(sentence_count: 10, supplemental: true, random_sentences_to_add: 2))
user18.avatar_image.attach(io: user18_image, filename: 'laura.jpg', content_type: 'image/jpg')
teacher18_video = URI.open('https://res.cloudinary.com/dqm4dcsvx/video/upload/v1670247722/Videos/Laura_u1xnbj.mp4')
teacher18 = Teacher.create!(user: user18, monday: rand_day, tuesday: rand_day, wednesday: rand_day, thursday:rand_day, friday:rand_day, saturday: rand_day, sunday:rand_day, start_time: rand_start_time, end_time: rand_end_time.to_time, price: rand_price)
teacher18.teacher_video.attach(io: teacher18_video, filename: 'laura.mp4', content_type: 'video/mp4')

user19_image = URI.open('https://res.cloudinary.com/dqm4dcsvx/image/upload/v1670510041/Avatar/patricia_nnqf78.jpg')
user19 = User.create!(email: 'patricia@teacher', password: '123123', first_name: 'Patricia', last_name: 'Kihara', about: Faker::Lorem.paragraph(sentence_count: 10, supplemental: true, random_sentences_to_add: 2))
user19.avatar_image.attach(io: user19_image, filename: 'patricia.jpg', content_type: 'image/jpg')
teacher19_video = URI.open('https://res.cloudinary.com/dqm4dcsvx/video/upload/v1670247734/Videos/Patricia_c9xfrh.mp4')
teacher19 = Teacher.create!(user: user19, monday: rand_day, tuesday: rand_day, wednesday: rand_day, thursday:rand_day, friday:rand_day, saturday: rand_day, sunday:rand_day, start_time: rand_start_time, end_time: rand_end_time.to_time, price: rand_price)
teacher19.teacher_video.attach(io: teacher19_video, filename: 'patricia.mp4', content_type: 'video/mp4')

user20_image = URI.open('https://res.cloudinary.com/dqm4dcsvx/image/upload/v1670510042/Avatar/fabio_psjqny.png')
user20 = User.create!(email: 'fabio@teacher', password: '123123', first_name: 'Fabio', last_name: 'Gardinal', about: Faker::Lorem.paragraph(sentence_count: 10, supplemental: true, random_sentences_to_add: 2))
user20.avatar_image.attach(io: user20_image, filename: 'fabio.jpg', content_type: 'fabio/jpg')

teacher20_video = URI.open('https://res.cloudinary.com/dqm4dcsvx/video/upload/v1670246698/Videos/Fabio_o0necp.mp4')
teacher20 = Teacher.create!(user: user20, monday: rand_day, tuesday: rand_day, wednesday: rand_day, thursday:rand_day, friday:rand_day, saturday: rand_day, sunday:rand_day, start_time: rand_start_time, end_time: rand_end_time.to_time, price: rand_price)
teacher20.teacher_video.attach(io: teacher20_video, filename: 'fabio.mp4', content_type: 'video/mp4')

#Atribuindo Categorias aos professores
puts "Estou atribuindo categorias aos seus professores💻"
TeacherCategory.create(teacher: teacher1, category: ruby)
TeacherCategory.create(teacher: teacher1, category: c)
TeacherCategory.create(teacher: teacher1, category: php)
TeacherCategory.create(teacher: teacher2, category: ruby)
TeacherCategory.create(teacher: teacher2, category: nodejs)
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
TeacherCategory.create(teacher: teacher6, category: php)
TeacherCategory.create(teacher: teacher6, category: css)
TeacherCategory.create(teacher: teacher7, category: ruby)
TeacherCategory.create(teacher: teacher7, category: html)
TeacherCategory.create(teacher: teacher7, category: javascript)
TeacherCategory.create(teacher: teacher8, category: python)
TeacherCategory.create(teacher: teacher8, category: java)
TeacherCategory.create(teacher: teacher8, category: react)
TeacherCategory.create(teacher: teacher9, category: ruby)
TeacherCategory.create(teacher: teacher9, category: java)
TeacherCategory.create(teacher: teacher10, category: html)
TeacherCategory.create(teacher: teacher10, category: css)
TeacherCategory.create(teacher: teacher11, category: ruby)
TeacherCategory.create(teacher: teacher11, category: python)
TeacherCategory.create(teacher: teacher11, category: java)
TeacherCategory.create(teacher: teacher12, category: ruby)
TeacherCategory.create(teacher: teacher12, category: nodejs)
TeacherCategory.create(teacher: teacher13, category: python)
TeacherCategory.create(teacher: teacher13, category: php)
TeacherCategory.create(teacher: teacher13, category: css)
TeacherCategory.create(teacher: teacher14, category: ruby)
TeacherCategory.create(teacher: teacher14, category: javascript)
TeacherCategory.create(teacher: teacher15, category: ruby)
TeacherCategory.create(teacher: teacher15, category: html)
TeacherCategory.create(teacher: teacher15, category: c)
TeacherCategory.create(teacher: teacher16, category: html)
TeacherCategory.create(teacher: teacher16, category: nodejs)
TeacherCategory.create(teacher: teacher17, category: ruby)
TeacherCategory.create(teacher: teacher17, category: javascript)
TeacherCategory.create(teacher: teacher18, category: php)
TeacherCategory.create(teacher: teacher18, category: python)
TeacherCategory.create(teacher: teacher18, category: javascript)
TeacherCategory.create(teacher: teacher19, category: ruby)
TeacherCategory.create(teacher: teacher19, category: react)
TeacherCategory.create(teacher: teacher19, category: javascript)
TeacherCategory.create(teacher: teacher20, category: ruby)
TeacherCategory.create(teacher: teacher20, category: java)
TeacherCategory.create(teacher: teacher20, category: c)

#Students
puts "Estou criando seus Estudantes💖"
user5 = User.create!(email: 'student@student', password: '123123', first_name: 'Test Student', last_name: 'TESTER')

puts "Terminei de fazer tudoo.... Aleluia 🤡"
puts "Instalei um Virus sem querer. Foi mal.😈"
