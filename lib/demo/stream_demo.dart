import 'package:flutter/material.dart';

class StreamDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StreamDemo'),
        elevation: 0.0,
      ),
      body: StreamDemoHome(),
    );
  }
}

class StreamDemoHome extends StatefulWidget {
  StreamDemoHome({Key key}) : super(key: key);

  _StreamDemoHomeState createState() => _StreamDemoHomeState();
}

class _StreamDemoHomeState extends State<StreamDemoHome> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Stream<String> _streamDemo = Stream.fromFuture(fetchData());
    _streamDemo.listen(onData);
  }
  void onData(String data){
    print(data);
  }
  Future<String> fetchData() async{
    await Future.delayed(Duration(seconds: 3));
    return 'hellolllll';
  }
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
