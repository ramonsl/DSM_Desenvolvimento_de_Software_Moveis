class Todo {
  int _id;
  String _title;
  String _desc;
  String _date;

  Todo(this._title, this._date, [this._desc]);
  Todo.comId(this._id, this._title, this._date, [this._desc]);

  int get id => _id;

  String get title => _title;

  String get desc => _desc;

  String get date => _date;

  set title(String newTitle) {
    if (newTitle.length <= 255) {
      this._title = newTitle;
    }
  }

  set description(String newDesc) {
    if (newDesc.length <= 255) {
      this._desc = newDesc;
    }
  }

  set date(String newDate) {
    this._date = newDate;
  }

  Map<String, dynamic> toMap() {
    //convete um obj para um mapa
    var map = Map<String, dynamic>();
    if (id != null) {
      map['id'] = _id;
    }
    map['title'] = _title;
    map['desc'] = _desc;
    map['date'] = _date;

    return map;
  }

  Todo.fromMapObject(Map<String, dynamic> map) {
    //Pega um mapa e convente para um obj.
    this._id = map['id'];
    this._title = map['title'];
    this._desc = map['desc'];
    this._date = map['date'];
  }
}
