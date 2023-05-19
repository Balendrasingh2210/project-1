import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:project_1/constants/sharedprefrence_keys.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'auth_view_model.freezed.dart';

final authViewModelProvider =
    StateNotifierProvider<AuthViewModel, AuthViewState>(
  (ref) => AuthViewModel(),
);

class AuthViewModel extends StateNotifier<AuthViewState> {
  AuthViewModel() : super(AuthViewState()) {
    _checkingUserPinExist();
  }

  onSubmitPressedCreatePin() async {
    if (state.pin.length != 4) {
      Fluttertoast.showToast(msg: "Enter 4 digit pin");
    } else {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString(userPinKey, state.pin);
      _setActiveView(AuthViewType.verifyPin);
    }
  }

  Future<bool> onSubmitPressedVerifyPin() async {
    if (state.pin.length != 4) {
      Fluttertoast.showToast(msg: "Enter 4 digit pin");
      return false;
    } else {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      if (state.pin != prefs.getString(userPinKey)) {
        Fluttertoast.showToast(msg: "Invalid pin");
        return false;
      } else {
        return true;
      }
    }
  }

  _checkingUserPinExist() async {
    // print('checking if userpin exists......');
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (prefs.getString(userPinKey) == null) {
      // print("key is null");
      _setActiveView(AuthViewType.createPin);
    } else {
      // print("key is there budyy");
      _setActiveView(AuthViewType.verifyPin);
    }
  }

  setPin(String value) => state = state.copyWith(pin: value);
  _setActiveView(AuthViewType activeView) =>
      state = state.copyWith(activeView: activeView);
}

@freezed
class AuthViewState with _$AuthViewState {
  factory AuthViewState({
    @Default("") String pin,
    @Default(AuthViewType.loadingView) AuthViewType activeView,
  }) = _AuthViewState;
}

enum AuthViewType {
  loadingView,
  createPin,
  verifyPin,
}
