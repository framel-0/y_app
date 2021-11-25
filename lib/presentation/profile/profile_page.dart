import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/profile/profile_bloc.dart';
import '../../injection.dart';
import '../core/colors.dart';
import '../routes/router.gr.dart';
import 'widgets/profile_list_item.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => getIt<ProfileBloc>()
          ..add(
            ProfileEvent.getAppUserStarted(),
          ),
        child: BlocBuilder<ProfileBloc, ProfileState>(
          builder: (context, state) {
            return state.map(
                initial: (_) => Container(),
                loadInProgress: (_) => Center(
                      child: CircularProgressIndicator(),
                    ),
                loadSuccess: (state) {
                  return ListView(
                    padding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                    children: [
                      Column(
                        children: [
                          Container(
                            width: 140.0,
                            height: 140.0,
                            decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                fit: BoxFit.fill,
                                image: new NetworkImage(
                                    "https://upload.wikimedia.org/wikipedia/commons/7/7c/Profile_avatar_placeholder_large.png"),
                              ),
                            ),
                          ),
                          _sizedBox(),
                          Text(
                            '${state.user.firstName} ${state.user.lastName}',
                            style: Theme.of(context)
                                .primaryTextTheme
                                .headline6!
                                .copyWith(
                                  color: Colors.black,
                                ),
                          ),
                        ],
                      ),
                      _sizedBox(),
                      ProfileItem(
                        name: 'Phone Number',
                        icon: Icons.phone_android_outlined,
                        title:
                            '${state.user.countryCode} ${formatNumber(state.user.phoneNumber)}',
                      ),
                      _divider(),
                      ProfileItem(
                        name: 'Eamil Address',
                        icon: Icons.email_outlined,
                        title: '${state.user.emailAddress}',
                      ),
                      _divider(),
                      _sizedBox(),
                    ],
                  );
                },
                loadFailure: (_) => Text('Failure'));
          },
        ));
  }

  formatNumber(String phoneNumber) {
    String formattedPhoneNumber = "(" +
        phoneNumber.substring(0, 3) +
        ") " +
        phoneNumber.substring(3, 6) +
        "-" +
        phoneNumber.substring(6, phoneNumber.length);

    return formattedPhoneNumber;
  }

  SizedBox _sizedBox() {
    return const SizedBox(
      height: 12.0,
    );
  }

  Widget _divider() => const Divider(
        height: 1,
        thickness: 2,
      );
}
