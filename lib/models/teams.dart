class Teams{

  String _teamName;
  String _foundationDate;
  String _tactic;
  String _coachName;
  String _resim;

  String get resim => _resim;

  set resim(String value) {
    _resim = value;
  }

  Teams(this._teamName, this._foundationDate,  this._tactic,
      this._coachName,this._resim);

  String get coachName => _coachName;

  set coachName(String value) {
    _coachName = value;
  }

  String get tactic => _tactic;

  set tactic(String value) {
    _tactic = value;
  }



  String get foundationDate => _foundationDate;

  set foundationDate(String value) {
    _foundationDate = value;
  }

  String get teamName => _teamName;

  set teamName(String value) {
    _teamName = value;
  }
}