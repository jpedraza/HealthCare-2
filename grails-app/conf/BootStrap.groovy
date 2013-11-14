
import security.Role
import security.UserRole
import security.User
import healthcare.Speciality;
import healthcare.Staff
import healthcare.Gender
import healthcare.State
import healthcare.MartialStatus

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

        UserRole.create testUser, adminRole, true        
        assert UserRole.count() == 1
    }
    def destroy = {
    }
}
