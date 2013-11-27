package security

import healthcare.Gender
import healthcare.State
import healthcare.MartialStatus

abstract class User {

	transient springSecurityService

	String username
	String password
	boolean enabled = true
	boolean accountExpired
	boolean accountLocked
	boolean passwordExpired
	
	//General
	String firstName;
	String lastName;
	String email;
	Date birthDate
	Gender gender;
	String cpf;
	String rg;
	String fatherName
	String motherName
	
	MartialStatus martialStatus
	
	//Contact	
	String phone
	String celphone
	String contactPhone	
	
	//Adress
	String address
	Integer number
	String complement
	String city
	State state;
	String zipCode
	
	File photo	

	static transients = ['springSecurityService']

	static constraints = {
		username(unique: true)
		password()
		photo(nullable:true)
		
	}

	static mapping = {
		password column: '`password`'
	}

	Set<Role> getAuthorities() {
		UserRole.findAllByUser(this).collect { it.role } as Set
	}

	def beforeInsert() {
		encodePassword()
	}

	def beforeUpdate() {
		if (isDirty('password')) {
			encodePassword()
		}
	}

	protected void encodePassword() {
		password = springSecurityService.encodePassword(password)
	}
	
	String toString() {
		return "${firstName} ${lastName}"
	}
}
