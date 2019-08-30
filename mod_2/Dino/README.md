#THINGS TO DO!!!!
Make a route - config/routes.rb
--
  get '/dinosaurs', to: 'dinosaurs#index'

  verb 'route', to: 'controller#action'
--
Make a corrosponding controller action!
--
def index
        render :index
    end

    def ACTION
        STUFF
    end
--

Make a page to go to!
app/views/dinosaurs/index.html.erb

app/views/CONTROLLER/ACTION.html.erb