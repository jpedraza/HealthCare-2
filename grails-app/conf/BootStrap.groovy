
import healthcare.*
import security.*
import grails.util.Environment

class BootStrap {

    def init = { servletContext ->
		switch (Environment.current) {
			case Environment.DEVELOPMENT:
				UserRole.findAll()*.delete(flush:true);
				User.findAll()*.delete(flush:true);
				Role.findAll()*.delete(flush:true);
			
		        def adminRole = new Role(authority: 'ROLE_ADMIN').save(flush: true)
		        def userRole = new Role(authority: 'ROLE_USER').save(flush: true)
				assert Role.count() == 2
		
		        def testUser = new Staff()
				testUser.username = 'testador'
				testUser.password = 'testador'
				testUser.firstName = 'testador'
				testUser.lastName = 'testador'
				testUser.email = 'testador'
				testUser.birthDate = new Date()
				testUser.gender = Gender.MALE
				testUser.cpf = 'testador'
				testUser.rg = 'testador'
				testUser.fatherName = 'testador'
				testUser.motherName = 'testador'
				testUser.martialStatus = MartialStatus.Single
				testUser.phone = 'testador'
				testUser.celphone = 'testador'
				testUser.contactPhone = 'testador'
				testUser.address = 'testador'
				testUser.number = 123
				testUser.complement = 'testador'
				testUser.city = 'testador'
				testUser.state = State.MinasGerais
				testUser.zipCode = 'testador'		
				testUser.photo = new File('files/teste.txt')		
				testUser.identification = 'testador'
				testUser.speciality = Speciality.Speciality1
		        testUser.save(flush: true, failOnError:true)
				assert User.count() == 1
				
				def testUser2 = new Patient()
				testUser2.username = 'augustochaves'
				testUser2.password = '123456'
				testUser2.firstName = 'Augusto Chaves'
				testUser2.lastName = 'testador'
				testUser2.email = 'testador'
				testUser2.birthDate = new Date()
				testUser2.gender = Gender.MALE
				testUser2.cpf = 'testador'
				testUser2.rg = 'testador'
				testUser2.fatherName = 'testador'
				testUser2.motherName = 'testador'
				testUser2.martialStatus = MartialStatus.Single
				testUser2.phone = '8888-1234'
				testUser2.celphone = '8888-1234'
				testUser2.contactPhone = 'testador'
				testUser2.address = 'testador'
				testUser2.number = 123
				testUser2.complement = 'testador'
				testUser2.city = 'testador'
				testUser2.state = State.MinasGerais
				testUser2.zipCode = 'testador'
				testUser2.photo = new File('files/teste.txt')
				testUser2.identification = '123456'
				testUser2.save(flush: true, failOnError:true)
				assert User.count() == 2
				
				def allergy1 = new Allergy()
				allergy1.allergy = "allergy1"
				allergy1.reaction = "reaction1"
				allergy1.allergyDate = new Date()
				allergy1.patient = testUser2
				allergy1.save(flush: true, failOnError:true)
				
				def allergy2 = new Allergy()
				allergy2.allergy = "allergy2"
				allergy2.reaction = "reaction2"
				allergy2.allergyDate = new Date()
				allergy2.patient = testUser2
				allergy2.save(flush: true, failOnError:true)
				
				def allergy3 = new Allergy()
				allergy3.allergy = "allergy3"
				allergy3.reaction = "reaction3"
				allergy3.allergyDate = new Date()
				allergy3.patient = testUser2
				allergy3.save(flush: true, failOnError:true)
				
				def allergy4 = new Allergy()
				allergy4.allergy = "allergy4"
				allergy4.reaction = "reaction4"
				allergy4.allergyDate = new Date()
				allergy4.patient = testUser2
				allergy4.save(flush: true, failOnError:true)
				
				Allergy.count() == 4
				
				def appointment1 = new Appointment()
				appointment1.appointmentDate = new Date()
				appointment1.appointmentType = AppointmentType.AppointmentType1
				appointment1.note = "Notes 123"
				appointment1.patient = testUser2
				appointment1.doctor = testUser
				appointment1.save(flush: true, failOnError:true)
				
				def appointment2 = new Appointment()
				appointment2.appointmentDate = new Date()
				appointment2.appointmentType = AppointmentType.AppointmentType2
				appointment2.note = "Notes 1234"
				appointment2.patient = testUser2
				appointment2.doctor = testUser
				appointment2.save(flush: true, failOnError:true)
				
				def appointment3 = new Appointment()
				appointment3.appointmentDate = new Date()
				appointment3.appointmentType = AppointmentType.AppointmentType1
				appointment3.note = "Notes 1235"
				appointment3.patient = testUser2
				appointment3.doctor = testUser
				appointment3.save(flush: true, failOnError:true)
				
				def appointment4 = new Appointment()
				appointment4.appointmentDate = new Date()
				appointment4.appointmentType = AppointmentType.AppointmentType2
				appointment4.note = "Notes 1236"
				appointment4.patient = testUser2
				appointment4.doctor = testUser
				appointment4.save(flush: true, failOnError:true)
				
				Appointment.count() == 4
				
				def bloodPressure1 = new BloodPressure()
				bloodPressure1.systolicPressure = 12
				bloodPressure1.diastolicPressure = 8
				bloodPressure1.patient = testUser2
				bloodPressure1.save(flush: true, failOnError:true)
				
				def bloodPressure2 = new BloodPressure()
				bloodPressure2.systolicPressure = 13
				bloodPressure2.diastolicPressure = 9
				bloodPressure2.patient = testUser2
				bloodPressure2.save(flush: true, failOnError:true)
				
				def bloodPressure3 = new BloodPressure()
				bloodPressure3.systolicPressure = 12
				bloodPressure3.diastolicPressure = 8
				bloodPressure3.patient = testUser2
				bloodPressure3.save(flush: true, failOnError:true)
				
				def bloodPressure4 = new BloodPressure()
				bloodPressure4.systolicPressure = 14
				bloodPressure4.diastolicPressure = 8
				bloodPressure4.patient = testUser2
				bloodPressure4.save(flush: true, failOnError:true)
				
				BloodPressure.count() == 4
				
				def diabetes1 = new Diabetes()
				diabetes1.glicemia = 60.0
				diabetes1.patient = testUser2
				diabetes1.save(flush: true, failOnError:true)
				
				def diabetes2 = new Diabetes()
				diabetes2.glicemia = 70.0
				diabetes2.patient = testUser2
				diabetes2.save(flush: true, failOnError:true)
				
				def diabetes3 = new Diabetes()
				diabetes3.glicemia = 50.0
				diabetes3.patient = testUser2
				diabetes3.save(flush: true, failOnError:true)
				
				def diabetes4 = new Diabetes()
				diabetes4.glicemia = 60.0
				diabetes4.patient = testUser2
				diabetes4.save(flush: true, failOnError:true)
				
				Diabetes.count() == 4
				
				def diagnosis1 = new Diagnosis()
				diagnosis1.diagnosis = "Diagnosis 1"
				diagnosis1.diagnosisDate = new Date()
				diagnosis1.diagnosisStatus = DiagnosisStatus.DiagnosisStatus1
				diagnosis1.code = 123
				diagnosis1.patient = testUser2
				diagnosis1.save(flush: true, failOnError:true)
				
				def diagnosis2 = new Diagnosis()
				diagnosis2.diagnosis = "Diagnosis 2"
				diagnosis2.diagnosisDate = new Date()
				diagnosis2.diagnosisStatus = DiagnosisStatus.DiagnosisStatus2
				diagnosis2.code = 1234
				diagnosis2.patient = testUser2
				diagnosis2.save(flush: true, failOnError:true)
				
				def diagnosis3 = new Diagnosis()
				diagnosis3.diagnosis = "Diagnosis 3"
				diagnosis3.diagnosisDate = new Date()
				diagnosis3.diagnosisStatus = DiagnosisStatus.DiagnosisStatus1
				diagnosis3.code = 12345
				diagnosis3.patient = testUser2
				diagnosis3.save(flush: true, failOnError:true)
				
				def diagnosis4 = new Diagnosis()
				diagnosis4.diagnosis = "Diagnosis 4"
				diagnosis4.diagnosisDate = new Date()
				diagnosis4.diagnosisStatus = DiagnosisStatus.DiagnosisStatus2
				diagnosis4.code = 1236
				diagnosis4.patient = testUser2
				diagnosis4.save(flush: true, failOnError:true)
				
				Diagnosis.count() == 4
				
				def medicalTest1 = new MedicalTest()
				medicalTest1.medicalTest = "Medical Test 1"
				medicalTest1.medicalTestDate = new Date()
				medicalTest1.code = 123
				medicalTest1.patient = testUser2
				medicalTest1.save(flush: true, failOnError:true)
				
				def medicalTest2 = new MedicalTest()
				medicalTest2.medicalTest = "Medical Test 2"
				medicalTest2.medicalTestDate = new Date()
				medicalTest2.code = 1234
				medicalTest2.patient = testUser2
				medicalTest2.save(flush: true, failOnError:true)
				
				def medicalTest3 = new MedicalTest()
				medicalTest3.medicalTest = "Medical Test 3"
				medicalTest3.medicalTestDate = new Date()
				medicalTest3.code = 1235
				medicalTest3.patient = testUser2
				medicalTest3.save(flush: true, failOnError:true)
				
				def medicalTest4 = new MedicalTest()
				medicalTest4.medicalTest = "Medical Test 4"
				medicalTest4.medicalTestDate = new Date()
				medicalTest4.code = 123456
				medicalTest4.patient = testUser2
				medicalTest4.save(flush: true, failOnError:true)
				
				MedicalTest.count() == 4
				
				def obesity1 = new Obesity()
				obesity1.weight = 70
				obesity1.height = 170
				obesity1.waistline = 70
				obesity1.patient = testUser2
				obesity1.save(flush: true, failOnError:true)
				
				def obesity2 = new Obesity()
				obesity2.weight = 75
				obesity2.height = 170
				obesity2.waistline = 73
				obesity2.patient = testUser2
				obesity2.save(flush: true, failOnError:true)
				
				def obesity3 = new Obesity()
				obesity3.weight = 74
				obesity3.height = 170
				obesity3.waistline = 72
				obesity3.patient = testUser2
				obesity3.save(flush: true, failOnError:true)
				
				def obesity4 = new Obesity()
				obesity4.weight = 72
				obesity4.height = 171
				obesity4.waistline = 71
				obesity4.patient = testUser2
				obesity4.save(flush: true, failOnError:true)
				
				Obesity.count() == 4				
		
		        UserRole.create testUser, adminRole, true   
		        assert UserRole.count() == 2
				break
				
			case Environment.DEVELOPMENT:
				// Create Roles
				def adminRole = Role.findOrSaveWhere(
					authority: 'ROLE_ADMIN'
				)
				def userRole = Role.findOrSaveWhere(
					authority: 'ROLE_USER'
				)
				assert Role.count() == 2
				
				def testUser = Staff.findOrSaveWhere(
					username: 'testador',
					password: 'testador',
					firstName: 'testador',
					lastName: 'testador',
					email: 'testador',
					birthDate: new Date(),
					gender: Gender.MALE,
					cpf: 'testador',
					rg: 'testador',
					fatherName: 'testador',
					motherName: 'testador',
					martialStatus: MartialStatus.Single,
					phone: 'testador',
					celphone: 'testador',
					contactPhone: 'testador',
					address: 'testador',
					number: 123,
					complement: 'testador',
					city: 'testador',
					state: State.MinasGerais,
					zipCode: 'testador',
					photo: new File('files/teste.txt'),
					identification: 'testador',
					speciality: Speciality.Speciality1
				)
				assert User.count() == 1
				
				def teste = UserRole.findOrSaveWhere(
					user: testUser,
					role: adminRole
				)
				assert UserRole.count() == 1				
		}
    }
    def destroy = {
    }
}
