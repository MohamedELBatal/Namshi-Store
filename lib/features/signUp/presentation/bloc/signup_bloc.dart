import 'package:bloc/bloc.dart';
import 'package:e_commerce/core/enums/enums.dart';
import 'package:e_commerce/core/errors/failuers.dart';
import 'package:e_commerce/features/signUp/data/models/SignUpModel.dart';
import 'package:e_commerce/features/signUp/domain/entities/SignUpRequestModel.dart';
import 'package:e_commerce/features/signUp/domain/use_cases/signUpUseCase.dart';
import 'package:meta/meta.dart';

part 'signup_event.dart';

part 'signup_state.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  SignUpUseCase signUpUseCase;

  SignupBloc(this.signUpUseCase) : super(SignUpInitState()) {
    on<SignUpButtonEvent>((event, emit) async {
      emit(state.copyWith(
          status: ScreenStatus.loading));
          var result =await signUpUseCase(event.requestModel);
          result.fold((l)
      {
        emit(
            state.copyWith(status: ScreenStatus.failure,
            failures: l));
      },

      (r){
      emit(state.copyWith(
      status: ScreenStatus.success,
      model: r
      ));
      });
    });
  }
}
