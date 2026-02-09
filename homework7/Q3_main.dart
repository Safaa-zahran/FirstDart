// Q3
// Create a class Movie with attributes title and rating. In main(), create a list of 4 movies. Print
// only the movies with a rating above 7.
void main(){
  Movie movie1 = Movie("hero", 7.8);
  Movie movie2 = Movie("batman", 9);
  Movie movie3 = Movie("king kong", 6.5);
  Movie movie4 = Movie("Sharknado", 5.6);

List<Movie> movies = [movie1,movie2,movie3,movie4];
for(var i in movies){
  if(i.rating > 7){
    print("${i.title},${i.rating}");
  }
}
}
class Movie{
  String title;
  double rating;
  Movie(this.title,this.rating);

}