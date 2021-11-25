import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:kt_dart/collection.dart';
import 'package:y_app/domain/delivery_location/delivery_location.dart';
import 'package:y_app/presentation/order_summary/order_summary_page.dart';
import 'package:y_app/presentation/routes/router.gr.dart';

import '../../domain/product/product.dart';
import '../core/colors.dart';
import '../core/util.dart';
import '../product/widgets/product_list.dart';
import 'widgets/payment_method_field.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int _sliderVal = 1;
    return Container(
      child: ListView(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 18.0),
        // crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Choisir un produit',
            style: Theme.of(context).primaryTextTheme.headline5!.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(
            height: 16,
          ),
          SizedBox(
            height: 200,
            child: ProductList(
              products: [
                Product(id: 1, name: 'Viande de boeuf', price: 2000, wieght: 1),
                Product(id: 1, name: 'Poulets', price: 3500, wieght: 3.5),
              ].toImmutableList(),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            'Ma Commande',
            style: Theme.of(context).primaryTextTheme.headline6!.copyWith(
                  color: colorPrimary,
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Montant',
                style: Theme.of(context).primaryTextTheme.headline6!.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
              ),
              Text(
                'Quantité',
                style: Theme.of(context).primaryTextTheme.headline6!.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '22 000 F',
                style: Theme.of(context).primaryTextTheme.headline6!.copyWith(
                      color: Colors.red,
                    ),
              ),
              Expanded(
                  child: Slider(
                min: 1,
                max: 10,
                divisions: 10,
                label: '',
                value: _sliderVal.toDouble(),
                onChanged: (newValue) {},
                activeColor: Colors.red,
                inactiveColor: Colors.yellow,
                thumbColor: Colors.yellow,
              )),
              Text(
                '11 kg',
                style: Theme.of(context).primaryTextTheme.headline6!.copyWith(
                      color: Colors.yellow,
                    ),
              ),
            ],
          ),
          Text(
            'Faites glissez le curseur pour choisir la quantité',
            style: Theme.of(context).primaryTextTheme.bodyText1!.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Date de livraison',
                      style: Theme.of(context)
                          .primaryTextTheme
                          .bodyText1!
                          .copyWith(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                          ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    DateTimePicker(
                      type: DateTimePickerType.date,
                      dateMask: 'd MMM, yyyy',
                      initialValue: DateTime.now().toString(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2100),
                      icon: Icon(Icons.event),
                      dateLabelText: 'Date',
                      decoration: dateTimePickerDecoration(
                          label: '',
                          suffix: Icon(
                            Icons.calendar_today,
                            color: Colors.red,
                          )),
                      selectableDayPredicate: (date) {
                        // Disable weekend days to select from the calendar
                        if (date.weekday == 6 || date.weekday == 7) {
                          return false;
                        }

                        return true;
                      },
                      onChanged: (val) => print(val),
                      validator: (val) {
                        print(val);
                        return null;
                      },
                      onSaved: (val) => print(val),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Choisir une zone',
                      style: Theme.of(context)
                          .primaryTextTheme
                          .bodyText1!
                          .copyWith(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                          ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    DropdownSearch<DeliveryLocation>(
                      mode: Mode.MENU,
                      showSelectedItems: true,
                      items: [],
                      dropdownSearchDecoration: dropDownDecoration(label: ""),
                      itemAsString: (DeliveryLocation? location) =>
                          location!.displayStr(),
                      onChanged: (DeliveryLocation? location) =>
                          print(location),
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Flexible(child: PaymentMethodField()),
          const SizedBox(
            height: 30,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: RaisedButton(
              onPressed: () =>
                  context.router.replace(const OrderSummaryRoute()),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  side: BorderSide(color: Colors.white)),
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              // color: Theme.of(context).buttonColor,
              textColor: Colors.white,
              child: const Text(
                'Poursuivre ma commande',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _formSpace() {
    return const SizedBox(
      height: 16,
    );
  }
}
