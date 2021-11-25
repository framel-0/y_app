import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/event_type/event_type_bloc.dart';
import '../../injection.dart';
import 'event_type_list.dart';

class EventTypePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<EventTypeBloc>(
      create: (_) => getIt<EventTypeBloc>()
        ..add(
          EventTypeEvent.getAllEventTypeStarted(),
        ),
      child: Scaffold(
          body: EventTypeList(),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.add),
          )),
    );
  }
}
