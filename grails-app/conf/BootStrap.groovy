
import healthcare.Gender
import healthcare.MartialStatus
import healthcare.Speciality
import healthcare.Staff
import healthcare.Patient
import healthcare.State
import security.Role
import security.User
import security.UserRole

class BootStrap {

    def init = { servletContext ->
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
		testUser2.firstName = 'testador'
		testUser2.lastName = 'testador'
		testUser2.email = 'testador'
		testUser2.birthDate = new Date()
		testUser2.gender = Gender.MALE
		testUser2.cpf = 'testador'
		testUser2.rg = 'testador'
		testUser2.fatherName = 'testador'
		testUser2.motherName = 'testador'
		testUser2.martialStatus = MartialStatus.Single
		testUser2.phone = 'testador'
		testUser2.celphone = 'testador'
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

        UserRole.create testUser, adminRole, true   
        assert UserRole.count() == 2
    }
    def destroy = {
    }
}
