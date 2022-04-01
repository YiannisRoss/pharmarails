# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Item.create([
              {  serial_number: '123456789',
                 unit: 'Each',
                 lot_number: '98470',
                 expiration_date: rand(10.years).seconds.from_now,
                 product_code: '9483039',
                 product_title: 'Aerius 5mg',
                 status: 'Commissioned' },
              {  serial_number: '987654321',
                 unit: 'Pallet',
                 lot_number: '81752',
                 expiration_date: rand(7.years).seconds.from_now,
                 product_code: '8321598',
                 product_title: 'Mucothiol',
                 status: 'Commissioned' },
              { serial_number: '111111111',
                unit: 'Bundle',
                lot_number: '12634',
                expiration_date: rand(1.years).seconds.from_now,
                product_code: '7385412',
                product_title: 'Depon 500mg',
                status: 'Commissioned' },
              { serial_number: '000000000',
                unit: 'Case',
                lot_number: '98146',
                expiration_date: rand(3.years).seconds.from_now,
                product_code: '492135',
                product_title: 'Nyquil',
                status: 'Sampled' }

            ])
