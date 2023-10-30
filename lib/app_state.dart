import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _wa = prefs.getString('ff_wa') ?? _wa;
    });
    _safeInit(() {
      _email = prefs.getString('ff_email') ?? _email;
    });
    _safeInit(() {
      _password = prefs.getString('ff_password') ?? _password;
    });
    _safeInit(() {
      _isAdmin = prefs.getBool('ff_isAdmin') ?? _isAdmin;
    });
    _safeInit(() {
      _namaRegister = prefs.getString('ff_namaRegister') ?? _namaRegister;
    });
    _safeInit(() {
      _waRegister = prefs.getString('ff_waRegister') ?? _waRegister;
    });
    _safeInit(() {
      _emailRegister = prefs.getString('ff_emailRegister') ?? _emailRegister;
    });
    _safeInit(() {
      _isLogin = prefs.getBool('ff_isLogin') ?? _isLogin;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _wa = '';
  String get wa => _wa;
  set wa(String _value) {
    _wa = _value;
    prefs.setString('ff_wa', _value);
  }

  String _email = '';
  String get email => _email;
  set email(String _value) {
    _email = _value;
    prefs.setString('ff_email', _value);
  }

  String _password = '';
  String get password => _password;
  set password(String _value) {
    _password = _value;
    prefs.setString('ff_password', _value);
  }

  bool _isAdmin = false;
  bool get isAdmin => _isAdmin;
  set isAdmin(bool _value) {
    _isAdmin = _value;
    prefs.setBool('ff_isAdmin', _value);
  }

  String _namaRegister = '';
  String get namaRegister => _namaRegister;
  set namaRegister(String _value) {
    _namaRegister = _value;
    prefs.setString('ff_namaRegister', _value);
  }

  String _waRegister = '';
  String get waRegister => _waRegister;
  set waRegister(String _value) {
    _waRegister = _value;
    prefs.setString('ff_waRegister', _value);
  }

  String _emailRegister = '';
  String get emailRegister => _emailRegister;
  set emailRegister(String _value) {
    _emailRegister = _value;
    prefs.setString('ff_emailRegister', _value);
  }

  bool _isLogin = false;
  bool get isLogin => _isLogin;
  set isLogin(bool _value) {
    _isLogin = _value;
    prefs.setBool('ff_isLogin', _value);
  }

  bool _showCalender = false;
  bool get showCalender => _showCalender;
  set showCalender(bool _value) {
    _showCalender = _value;
  }

  List<ListkonsumenStruct> _listkonsumen = [];
  List<ListkonsumenStruct> get listkonsumen => _listkonsumen;
  set listkonsumen(List<ListkonsumenStruct> _value) {
    _listkonsumen = _value;
  }

  void addToListkonsumen(ListkonsumenStruct _value) {
    _listkonsumen.add(_value);
  }

  void removeFromListkonsumen(ListkonsumenStruct _value) {
    _listkonsumen.remove(_value);
  }

  void removeAtIndexFromListkonsumen(int _index) {
    _listkonsumen.removeAt(_index);
  }

  void updateListkonsumenAtIndex(
    int _index,
    ListkonsumenStruct Function(ListkonsumenStruct) updateFn,
  ) {
    _listkonsumen[_index] = updateFn(_listkonsumen[_index]);
  }

  void insertAtIndexInListkonsumen(int _index, ListkonsumenStruct _value) {
    _listkonsumen.insert(_index, _value);
  }

  List<ListpembayaranStruct> _listpembayaran = [];
  List<ListpembayaranStruct> get listpembayaran => _listpembayaran;
  set listpembayaran(List<ListpembayaranStruct> _value) {
    _listpembayaran = _value;
  }

  void addToListpembayaran(ListpembayaranStruct _value) {
    _listpembayaran.add(_value);
  }

  void removeFromListpembayaran(ListpembayaranStruct _value) {
    _listpembayaran.remove(_value);
  }

  void removeAtIndexFromListpembayaran(int _index) {
    _listpembayaran.removeAt(_index);
  }

  void updateListpembayaranAtIndex(
    int _index,
    ListpembayaranStruct Function(ListpembayaranStruct) updateFn,
  ) {
    _listpembayaran[_index] = updateFn(_listpembayaran[_index]);
  }

  void insertAtIndexInListpembayaran(int _index, ListpembayaranStruct _value) {
    _listpembayaran.insert(_index, _value);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
