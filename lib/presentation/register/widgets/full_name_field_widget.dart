import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../application/auth/register_form/register_form_bloc.dart';
import '../../core/util.dart';

class FullNameField extends HookWidget {
  const FullNameField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();
    return BlocBuilder<RegisterFormBloc, RegisterFormState>(
      buildWhen: (previous, current) => previous.firstName != current.firstName,
      builder: (context, state) {
        return TextFormField(
          textInputAction: TextInputAction.next,
          keyboardType: TextInputType.name,
          decoration: textDecoration(label: "Prénom & Nom"),
          onChanged: (value) => context.read<RegisterFormBloc>().add(
                RegisterFormEvent.firstNameChanged(value),
              ),
          validator: (value) =>
              context.read<RegisterFormBloc>().state.firstName.value.fold(
                    (f) => f.maybeMap(
                      empty: (_) => 'Invalid Prénom & Nom',
                      orElse: () => null,
                    ),
                    (r) => null,
                  ),
        );
      },
    );
  }
}
