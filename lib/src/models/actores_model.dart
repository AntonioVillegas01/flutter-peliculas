//Clase para agruparlos
class Cast {

  List<Actor> actores = new List();

  Cast.fromJsonList(List<dynamic> jsonList){

    //validacion del Json List
    if(jsonList == null) return;

    jsonList.forEach( (item) {

      final actor = Actor.fromJsonMap(item);
      //agregar al actor a la lista
      actores.add(actor);
    });
  }
}


//Modelo para manejar un solo actor
class Actor {
  int castId;
  String character;
  String creditId;
  int gender;
  int id;
  String name;
  int order;
  String profilePath;

  Actor({
    this.castId,
    this.character,
    this.creditId,
    this.gender,
    this.id,
    this.name,
    this.order,
    this.profilePath,
  });


// metodo para Recibir la informacion en un mapa
// asignar cada propiedad del mapa a las propiedades de la clase
//y crear una instancia de mi clase Actor
Actor.fromJsonMap(Map<String, dynamic> json){
  castId       = json['cast_id'];
  character    = json['character'];
  creditId     = json['credit_id'];
  gender       = json['gender'];
  id           = json['id'];
  name         = json['name'];
  order        = json['order'];
  profilePath  = json['profile_path'];


  }

  getFoto(){
    if (profilePath == null){
      return 'https://png.pngtree.com/svg/20161212/f93e57629c.svg';
    }else {
      return 'https://image.tmdb.org/t/p/w500/$profilePath';
    }

  }


}

