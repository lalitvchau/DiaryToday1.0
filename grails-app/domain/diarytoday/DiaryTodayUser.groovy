package diarytoday

class DiaryTodayUser {
	String username
	String password
	String name
	String city
	//Date dob;
	String gender
    static constraints = {
		username(blank:false, nullable:false)
		password(blank:false, nullable:false, matches:"[0-9a-zA-Z]+")
		name(blank:false, nullable:false)
		city(blank:false, nullable:false)
		//dob(blank:false, nullable:false)
    }
	static mapping = {
		id(name:'username', type:'string',generator: 'assigned')
	}
}
