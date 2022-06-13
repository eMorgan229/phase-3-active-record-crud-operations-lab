class Movie < ActiveRecord::Base
#Create
    def Movie.create_with_title(title)
        Movie.create(title: title)
    end

    def Movie.first_movie
        Movie.first
    end

    def Movie.last_movie
        Movie.last
    end

    def Movie.movie_count
        Movie.count
    end

    def Movie.find_movie_with_id(id)
        Movie.find(id)
    end
    
    def Movie.find_movie_with_attributes(attributes)
        Movie.find_by(attributes)
    end

    def Movie.find_movies_after_2002
        Movie.where("release_date > 2002")
    end

#Updates
    def update_with_attributes(attributes)
        self.update(attributes)
    end

    def Movie.update_all_titles(title)
        self.update(title: title)
    end

    def self.delete_by_id(id)
        movie=Movie.find(id)
        movie.destroy
    end

    def Movie.delete_all_movies
        Movie.destroy_all
    end

end