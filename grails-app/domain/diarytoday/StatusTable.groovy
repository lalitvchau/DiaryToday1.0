package diarytoday

class StatusTable {
	String username 
	String msg
	String name
	Date date 
    static constraints = {
		username(nullable:false)
		msg(nullable:false, maxSize:1024*1024*2)
		date(nullable:false)
		name(nullable:false)
		
    }
	static mapping = {
			sort date:"desc"
	}
}
