# README

- Supplier and Account
Supplier.create(name: "John")
Supplier.find(1).create_account(balance: 120)
Supplier.find(1).account
Supplier.find(1).account.destroy

- Author and Books
Author.find(1).books.create(title: "ROR")
Author.find(1).books
books = Author.find(1).books
books.pluck(:title)

- Doctor, Appointment and Patient
doctor = Doctor.create(name: 'Dr. Smith')
patient = Patient.create(name: 'John Doe')
appointment = Appointment.create(doctor: doctor, patient: patient, appointment_date: DateTime.now)
patients = doctor.patients
puts patients.pluck(:name) # Output: ['John Doe']
doctors = patient.doctors
doctors.pluck(:name)
