class MoviesController < ActionController::Base

 def index
@list_directors = Director.all

 end

 def act
@list_actors = Actor.all
 end

 def rollfilm
@list_films = Movie.all
 end


 def newdirect
 end

  def createdirect
    @direct = Director.new
    @direct.name = params[:the_name]
    @direct.dob = params[:the_dob]
    @direct.image_url = params[:the_image]
    @direct.bio = params[:the_bio]
    @direct.save
  render ("showdirect")
 end

 def newact
 end

def createact
  @act = Actor.new
  @act.name = params[:the_name]
  @act.dob = params[:the_dob]
  @act.image_url = params[:the_image]
  @act.bio = params[:the_bio]
  @act.save
render ("showact")
end



def newfilm
end

 def createfilm
    @film = Movie.new
    @film.title = params[:the_title]
    @film.year = params[:the_year]
    @film.image_url = params[:the_image]
    @film.description = params[:the_description]
    @film.duration = params[:the_duration]
    @film.save
render ("showfilm")
 end

def showdirect
@direct = Director.find(params[:id])

end

def showfilm
 @film = Movie.find(params[:id])
 end

 def showact
@act = Actor.find(params[:id])
 end

def editdirect
  @direct = Director.find(params[:id])
end
def updatedirect
  @direct = Director.find(params[:id])
    @direct = Director.find(params[:id])
    @direct.name = params[:the_name]
    @direct.dob = params[:the_dob]
    @direct.image_url = params[:the_image]
    @direct.bio = params[:the_bio]
    @direct.save
render ("showdirect")
end

def editact
   @act = Actor.find(params[:id])
end

def updateact
    @act = Actor.find(params[:id])
    @act.name = params[:the_name]
    @act.dob = params[:the_dob]
    @act.image_url = params[:the_image]
    @act.bio = params[:the_bio]
    @act.save
render ("showact")
end

def editfilm
@film = Movie.find(params[:id])
end

def updatefilm
   @film = Movie.find(params[:id])
    @film = Movie.find(params[:id])
    @film.title = params[:the_title]
    @film.year = params[:the_year]
    @film.image_url = params[:the_image]
    @film.description = params[:the_description]
    @film.duration = params[:the_duration]
    @film.save
render ("showfilm")
end



 def destroyd
  @direct = Director.find(params[:id])

  @direct.destroy

  redirect_to("http://localhost:3000/directors")
 end

 def destroya
  @actor = Actor.find(params[:id])

  @actor.destroy

  redirect_to("http://localhost:3000/actors")
 end

 def destroym

  @film = Movie.find(params[:id])

  @film.destroy

  redirect_to("http://localhost:3000/movies")

 end

end
