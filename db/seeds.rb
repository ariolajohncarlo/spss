# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Supplier.create(company_code: "TEST1", company_name: "Company 1", address: "Company 1 address", contact_number: "Company 1 Contact")
Supplier.create(company_code: "TEST2", company_name: "Company 2", address: "Company 2 address", contact_number: "Company 2 Contact")
Supplier.create(company_code: "TEST3", company_name: "Company 3", address: "Company 3 address", contact_number: "Company 3 Contact")

ComponentType.create(type_description: "Solar Panel")
ComponentType.create(type_description: "Bulb")
ComponentType.create(type_description: "Inverter")
ComponentType.create(type_description: "Extension Wire")

Component.create(component_id: "AXF-5000", component_description: "AXF-5000 Solar Panel", component_type_id: 1, quantity: 2, cost: 5000.00, retail_price: 7500.00, supplier_id: 1)
Component.create(component_id: "FUG-80", component_description: "FUG-80 Light Bulb", component_type_id: 2, quantity: 10, cost: 100.00, retail_price: 150.00, supplier_id: 2)
Component.create(component_id: "RYQR-654", component_description: "RYQR-654 Extension Wire", component_type_id: 4, quantity: 10, cost: 300.00, retail_price: 4500.00, supplier_id: 3)
Component.create(component_id: "VZXN-4651", component_description: "VZXN-4651 Inverter, Hybrid", component_type_id: 3, quantity: 10, cost: 5000.00, retail_price: 8000.00, supplier_id: 1)

Package.create(package_name: "Rich Kid's Package", cost: 20000)
Package.create(package_name: "The Budget Package", cost: 5000)

Type.create(user_type: "DBA", user_description: "Database Administrator")
Type.create(user_type: "MAN", user_description: "Manager")
Type.create(user_type: "EMP", user_description: "Employee")

User.create(user_name: "cena_j", password: "cantseeme", type_id: 1, last_name: "Cena", first_name: "John", middle_name: "Invisible")
User.create(user_name: "trump_d", password: "iheartwalls", type_id: 2, last_name: "Trump", first_name: "Donald", middle_name: "Mr. President")

ComponentPackage.create(package_id: 1, component_id: 1, quantity: 3)
ComponentPackage.create(package_id: 1, component_id: 2, quantity: 5)