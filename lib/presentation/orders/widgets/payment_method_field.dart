import 'package:flutter/material.dart';

import '../../../infrustruture/payment_method/local_service/i_payment_method_local_service.dart';
import '../../../infrustruture/payment_method/payment_method_dto.dart';
import '../../../injection.dart';

class PaymentMethodField extends StatefulWidget {
  const PaymentMethodField({Key? key}) : super(key: key);

  @override
  _PaymentMethodFieldState createState() => _PaymentMethodFieldState();
}

class _PaymentMethodFieldState extends State<PaymentMethodField> {
  @override
  Widget build(BuildContext context) {
    // Default Radio Button Item
    PaymentMethodDto? _character;

    final pms = getIt<IPaymentMethodLocalService>().getPaymentMethods();
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: pms
          .map((data) => Flexible(
              child: rd(
                  Radio<PaymentMethodDto>(
                    value: data,
                    groupValue: _character,
                    onChanged: (PaymentMethodDto? value) {
                      setState(() {
                        _character = value;
                      });
                    },
                  ),
                  data.name)
              // ListTile(
              //   title: Text('${data.name}'),
              //   leading: Radio<PaymentMethodDto>(
              //     value: data,
              //     groupValue: _character,
              //     onChanged: (PaymentMethodDto? value) {
              //       setState(() {
              //         _character = value;
              //       });
              //     },
              //   ),
              // ),
              ))
          .toList(),
    );
  }

  Widget rd(Widget leading, String text) {
    return Row(
      children: [
        leading,
        Expanded(
            child: Text(
          text,
          style: Theme.of(context).primaryTextTheme.bodyText2!.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.w700,
              ),
        )),
      ],
    );
  }
}
