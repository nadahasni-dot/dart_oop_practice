//* generic type class
//* <T> means type, this can be changed by anything such as <X>, <Y>
//* but <T> is commnly used (T -> Type)
class GenericSecure<T> { //generic class 
  final T _data; //generic type
  final String _password;

  GenericSecure(this._data, this._password);

  T getData(String password) { // return value with generic type of (T) if password is correct
    if (_password == password) {
      return _data;
    }
  }
}