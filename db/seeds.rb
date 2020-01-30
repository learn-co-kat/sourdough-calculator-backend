# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(email: 'kat@kat.kat', password: 'kat')
User.create(email: 'oli@oli.oli', password: 'oli')

Bake.create(user_id: 1, total_flour_g: 1000, total_flour_p: 100, water_g:700, water_p: 70, salt_g: 20, salt_p: 2, leaven_g: 200, leaven_p:20, hydration:70, rating:5, name: 'Country Loaf', date: '01/01/2020')
Bake.create(user_id: 1, total_flour_g: 2000, total_flour_p: 100, water_g:1400, water_p: 70, salt_g: 40, salt_p: 2, leaven_g: 400, leaven_p:20, hydration:70, rating:4, name: 'Country Loaf Double Batch', date: '05/01/2020')
Bake.create(user_id: 2, total_flour_g: 1000, total_flour_p: 100, water_g:700, water_p: 70, salt_g: 20, salt_p: 2, leaven_g: 200, leaven_p:20, hydration:70, rating:5, name: 'Oli Country Loaf', date: '01/12/2019')
Bake.create(user_id: 2, total_flour_g: 1000, total_flour_p: 100, water_g:700, water_p: 70, salt_g: 20, salt_p: 2, leaven_g: 200, leaven_p:20, hydration:70, rating:5, name: 'Roasted Garlic Batard', date: '01/01/2020')

Note.create(bake_id:1, title: 'Flours used', content:'900g King Arthur Flour white all purpose, 100g whole wheat')
Note.create(bake_id:2, title: 'Flours used', content:'900g King Arthur Flour white all purpose, 100g whole wheat')
Note.create(bake_id:2, title: 'Autolyze', content:'1 hour at 80F')
Note.create(bake_id:3, title: 'Flours used', content:'900g King Arthur Flour white all purpose, 100g whole wheat')
Note.create(bake_id:4, title: 'Flours used', content:'900g King Arthur Flour white all purpose, 100g whole wheat')