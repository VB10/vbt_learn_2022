import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, required this.title, this.isLoaing = false}) : super(key: key);
  final String title;
  final bool isLoaing;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: isLoaing ? const CircularProgressIndicator() : Text(title),
    );
  }
}

// ------

class CustomButton2 extends StatefulWidget {
  const CustomButton2({Key? key, required this.title, required this.onPressed}) : super(key: key);
  final String title;
  final Future<void> Function(bool isOkay) onPressed;

  @override
  State<CustomButton2> createState() => _CustomButton2State();
}

class _CustomButton2State extends State<CustomButton2> {
  bool _isLoading = false;
  void _changeLoading() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        if (_isLoading) return;
        _changeLoading();
        await widget.onPressed(_isLoading);
        _changeLoading();
      },
      child: _isLoading ? const CircularProgressIndicator() : Text(widget.title),
    );
  }
}

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      floatingActionButton: _loadingButton(),
    );
  }

  AppBar _appBar() => AppBar(title: isLoading ? const CircularProgressIndicator() : null);

  CustomButton2 _loadingButton() {
    return CustomButton2(
        title: 'a',
        onPressed: (bool data) async {
          await Future.delayed(const Duration(minutes: 1));
        });
  }
}
