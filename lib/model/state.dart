
abstract class newappstate{}

class newappintialstate extends newappstate{}

class counterplusstate extends newappstate{}
class countermuinsstate extends newappstate {}

class newapploadingBusinessstate extends newappstate{}
class newappsucessBusinessstate extends newappstate{}
class newapperrorBusinessstate extends newappstate{
   final String error;
  newapperrorBusinessstate(this.error);
}

class newapploadingsciencestate extends newappstate{}
class newappsucesssciencestate extends newappstate{}
class newapperrorsciencestate extends newappstate{
   final String error;
  newapperrorsciencestate(this.error);
}


class newapploadingsportsstate extends newappstate{}
class newappsucesssportsstate extends newappstate{}
class newapperrorsportsstate extends newappstate{
   final String error;
  newapperrorsportsstate(this.error);
}

class bottomnavgationstate extends newappstate{}

class newappchangesstate extends newappstate{}


