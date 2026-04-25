import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testapp/bloc_state_management/bloc_explore_counter/bloc/counter/counter_bloc.dart';
import 'package:testapp/bloc_state_management/bloc_explore_counter/bloc/counter/counter_event.dart';
import 'package:testapp/bloc_state_management/bloc_explore_counter/bloc/counter/counter_state.dart';
import 'package:testapp/bloc_state_management/posts_app/ui/posts_screen.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  late CounterBloc _counterBloc;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _counterBloc = CounterBloc();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _counterBloc.close(); // data related to counter bloc , states , event will not be a part of the system as leaving from this screen so by this app gets optimized
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('BUILD METHOD BUILD');
    return BlocProvider(
      create: (context) => _counterBloc,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Counter Example'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PostsScreen()));
              },
              child: const Text('Next'),
            ),
            SizedBox(height: 30,),
            BlocBuilder<CounterBloc, CounterState>(
                builder: (context, state) {
                  print('Build');
                  return Center(
                    child: Text(
                      state.counter.toString(),
                      style: TextStyle(
                        fontSize: 60,
                      ),
                    ),
                  );
                }
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                BlocBuilder<CounterBloc, CounterState>(
                    buildWhen: (current , previous) => false,
                    builder: (context, state) {
                      print('Build INCREMENT BUTTON ');
                      print('Build');
                      return ElevatedButton(
                          onPressed: () {
                            context.read<CounterBloc>().add(IncrementCounter());
                          },
                          child: Text('Increment'),
                      );
                    }
                ),
                SizedBox(width: 20,),
                BlocBuilder<CounterBloc, CounterState>(
                    buildWhen: (current , previous) => false,
                    builder: (context, state) {
                      print('Build');
                      return ElevatedButton(
                          onPressed: () {
                            context.read<CounterBloc>().add(DecrementCounter());
                          },
                          child: Text('Decrement'),
                      );
                    }
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
