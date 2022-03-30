class ParentException {

  Exception? exception ;

  ParentException({this.exception});


   getException(){

    return exception.toString();
  }


}