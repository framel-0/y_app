import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/auth/phone_number_verification/phone_number_verification_bloc.dart';
import '../../../domain/auth/value_objects.dart';
import '../../core/colors.dart';
import '../../routes/router.gr.dart';
import 'widgets/verification_code_field_widget.dart';

class VerifyPhoneNumberPage extends StatelessWidget {
  final CountryCode countryCode;
  final PhoneNumber phoneNumber;

  const VerifyPhoneNumberPage({
    Key? key,
    required this.countryCode,
    required this.phoneNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PhoneNumberVerificationBloc,
        PhoneNumberVerificationState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (f) {
              // FlushbarHelper.createError(
              //   message: f.map(
              //     canceledByUser: (_) => '',
              //     serverError: (_) => 'Server Error',
              //     phoneNumberAlreadyInUse: (_) => 'Phone Number Already In Use',
              //     invalidPhoneNumberAndPasswordCombination: (_) => '',
              //   ),
              // ).show(context);
            },
            (_) {
              context.router.push(RegisterRoute());
            },
          ),
        );
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(),
          body: Form(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 18.0,
              ),
              child: Column(
                children: [
                  _formSpace(),
                  Text(
                    "Entrer le code de vérification SMS",
                    style: Theme.of(context)
                        .primaryTextTheme
                        .headline6!
                        .copyWith(
                            color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  _formSpace(),
                  VerifycationCodeField(countryCode, phoneNumber),
                  _formSpace(),
                  Text(
                    "Vous n’avez pas reçu le code ?",
                    style:
                        Theme.of(context).primaryTextTheme.bodyText2!.copyWith(
                              color: Colors.black,
                            ),
                  ),
                  FlatButton(
                    child: Text(
                      'Renvoyer le code',
                      style: TextStyle(
                        color: colorPrimary,
                        fontSize: 14,
                      ),
                    ),
                    onPressed: () {},
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: RaisedButton(
                      onPressed: state.isSubmitting
                          ? null
                          : () {
                              context.read<PhoneNumberVerificationBloc>().add(
                                    const PhoneNumberVerificationEvent
                                        .verifyButtonPressed(),
                                  );
                            },
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                          side: BorderSide(color: Colors.white)),
                      padding: const EdgeInsets.symmetric(vertical: 12.0),
                      // color: Theme.of(context).buttonColor,
                      textColor: Colors.white,
                      child: const Text(
                        'Validar',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                  if (state.isSubmitting) ...[
                    const SizedBox(
                      height: 8,
                    ),
                    const CircularProgressIndicator()
                  ],
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _formSpace() {
    return const SizedBox(
      height: 16,
    );
  }
}
