import 'package:flutter_application/model/User.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserBloc extends Bloc<int, User> {
  @override
  // TODO: implement initialState
  User get initialState => UninitializedUser();

  @override
  Stream<User> mapEventToState(int event) async* {
    try {
      User user = await User.getUserFromAPI(event);
      yield user;
    } catch (e) {}
  }
}
