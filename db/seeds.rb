# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Entity.create(name: 'Emilio Botín', 
              description: 'El banquero de España', 
              person: true, 
              priority: :high,
              published: true)

Entity.create(name: 'Juan Carlos I', 
              description: 'Rey de España', 
              person: true, 
              priority: :high,
              published: true)

admin = User.create(name: 'Admin', 
                    email: 'admin@quienmanda.es', 
                    password: 'password', 
                    password_confirmation: 'password',
                    admin: true)

user = User.create( name: 'A user', 
                    email: 'user@example.com', 
                    password: 'password', 
                    password_confirmation: 'password',
                    admin: false)

Post.create(title: 'Caso Urdangarín', 
            content: 'Blah blah', 
            author: admin, 
            published: true)

Post.create(title: 'La próxima gran historia', 
            content: 'Caliente caliente', 
            author: admin, 
            published: false)

# Add photo seeds
photo = Photo.create!(title: 'Marichalar de compras', copyright: 'Desconocido', published: true)
photo.file.store!(File.open(File.join(Rails.root, 'db', 'seed_files', 'Marichalar.jpeg')))
photo.save!