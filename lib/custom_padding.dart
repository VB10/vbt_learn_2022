import 'package:flutter/material.dart';

class HomeView3 extends StatelessWidget {
  const HomeView3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          decoration: CustomDecoration(),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('data'),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('data'),
        ),
        Container(
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('data'),
          ),
        )
      ],
    ));
  }
}

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PaddingVertical(
        child: Column(),
      ),
    );
  }
}

class HomeView2 extends StatelessWidget {
  const HomeView2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: X.edgeInstsaLll,
        child: Column(),
      ),
    );
  }
}

class PaddingVertical extends StatelessWidget {
  const PaddingVertical({Key? key, required this.child}) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 5),
      child: child,
    );
  }
}

class PagePadding extends EdgeInsets {
  const PagePadding.all(double value) : super.all(value);

  const PagePadding.scaffoldVertical() : super.only(right: 10, left: 5);
}

class X {
  static const edgeInstsaLll = EdgeInsets.all(5);
}

class CustomDecoration extends BoxDecoration {
  CustomDecoration(BuildContext context)
      : super(
          border: BorderCustom(context).allBorder(),
          boxShadow: [const BoxShadowCustom()],
          shape: BoxShape.circle,
        );
}

class BorderCustom {
  final BuildContext context;

  BorderCustom(this.context);
  Border allBorder() {
    return Border.all(color: Theme.of(context).colorScheme.error, width: 3);
  }
}

class BoxShadowCustom extends BoxShadow {
  const BoxShadowCustom() : super(color: Colors.red);
}
