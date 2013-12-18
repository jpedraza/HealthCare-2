
import healthcare.*
import security.*

class BootStrap {

    def init = { servletContext ->
		UserRole.findAll()*.delete(flush:true);
		User.findAll()*.delete(flush:true);
		Role.findAll()*.delete(flush:true);
		// Create Roles
		def adminRole = Role.findOrSaveWhere(
			authority: 'ROLE_ADMIN'
		).save(flush:true)
		def userRole = Role.findOrSaveWhere(
			authority: 'ROLE_USER'
		).save(flush:true)
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
		).save(flush:true)
		assert User.count() == 1
		
		assert UserRole.count() == 1		
    }
	
    def destroy = {
    }
}
