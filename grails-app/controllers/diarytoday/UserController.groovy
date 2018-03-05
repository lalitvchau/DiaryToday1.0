package diarytoday

class UserController {

    def index() { 
		String gender
		
		if(session.username!=null) redirect action:'home'
		else{
		session.error=null
		DiaryTodayUser user = new DiaryTodayUser(name:params.name,username:params.username,password:params.password,city:params.city,gender:params.gender)
		try{
			if(user.save(flush:true)){
			    session.username=params.username
				session.error=null
				redirect action:'home'
			}else   		
				render(view:'/index')
			}
		catch(Exception e)
		{
				session.error="Sorry ! User already exist.. Please try another username"
				render(view:'/index') 
		}
		}
	}
	def home(){
		if(session.username){
				[status:StatusTable]
			}
		else{ render(view:'/index');
		}
	}
	def profile(){
		if(session.username){
				[status:StatusTable]
			}
		else{ render(view:'/index');
		}
	}
	def login(){
		
		if(session.username!=null) redirect(action:'home')
		else{
		session.errorLogin=null;
		def user = DiaryTodayUser.findByUsernameLikeAndPasswordLike(params.username,params.password)
		if(!user) {
				session.errorLogin="Login Password and Id not correct !"
				render(view:'/index') 
		}
		else{
			session.username = user.username
			session.errorLogin=null;
			redirect(action:'home')
		}
		}
	}
	def status(){
	    render "myAccount"
	}
	def save(){
		if(session.username==null){  render(view:'/index')}
		else{
		try{
		   // render session.username + params.msg +new Date() +DiaryTodayUser.findByUsernameLike(session.username).name;
			StatusTable status= new StatusTable(username:session.username,msg:params.msg,date:new Date(),name:DiaryTodayUser.findByUsernameLike(session.username).name);
			if(status.save(flush:true))
			     redirect(action:'home')
			else render "error"
		}
		catch(Exception e){
			render e.getMessage()
		}
		}
	}
	def logout(){
		session.username=null;
		session.error=null
		render(view:'/index')
	}
	
}
