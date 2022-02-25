import 'package:flutter/material.dart';

class HelloView extends StatefulWidget {
  const HelloView({Key? key}) : super(key: key);

  @override
  _HelloViewState createState() => _HelloViewState();
}

class _HelloViewState extends State<HelloView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const BodyText(title: 'a'),
        const BodyText(title: 'a'),
        const BodyText(title: 'a'),
        const BodyText(title: 'a'),
        const BodyText(title: 'a'),
        const BodyText(title: 'a'),
        const BodyText(title: 'a'),
        const BodyText(title: 'a'),
        const BodyText(title: 'a'),
        const BodyText(title: 'a'),
        const BodyText(title: 'a'),
        const BodyText(title: 'a'),
        const BodyText(title: 'a'),
        CustomTexts.bodyText('a', context: context),
        CustomTexts.bodyText('a', context: context),
        CustomTexts.bodyText('a', context: context),
        CustomTexts.bodyText('a', context: context),
        CustomTexts.bodyText('a', context: context),
        CustomTexts.bodyText('a', context: context),
        CustomTexts.bodyText('a', context: context),
        CustomTexts.bodyText('a', context: context),
        CustomTexts.bodyText('a', context: context),
        CustomTexts.bodyText('a', context: context),
        CustomTexts.bodyText('a', context: context),
        CustomTexts.bodyText('a', context: context),
        CustomTexts.bodyText('a', context: context),
        CustomTexts.bodyText('a', context: context),
        CustomTexts.bodyText('a', context: context),
        Text(
          'aa',
          style: Theme.of(context).textTheme.headline1?.copyWith(color: Colors.red),
        ),
        Text(
          'aa',
          style: Theme.of(context).textTheme.headline1?.copyWith(color: Colors.red),
        ),
        Text(
          'aa',
          style: Theme.of(context).textTheme.headline1?.copyWith(color: Colors.red),
        ),
        Text(
          'aa',
          style: Theme.of(context).textTheme.headline1?.copyWith(color: Colors.red),
        ),
        Text(
          'aa',
          style: Theme.of(context).textTheme.headline1?.copyWith(color: Colors.red),
        ),
        Text(
          'aa',
          style: Theme.of(context).textTheme.headline1?.copyWith(color: Colors.red),
        ),
        Text(
          'aa',
          style: Theme.of(context).textTheme.headline1?.copyWith(color: Colors.red),
        ),
        Text(
          'aa',
          style: Theme.of(context).textTheme.headline1?.copyWith(color: Colors.red),
        ),
        Text(
          'aa',
          style: Theme.of(context).textTheme.headline1?.copyWith(color: Colors.red),
        ),
        Text(
          'aa',
          style: Theme.of(context).textTheme.headline1?.copyWith(color: Colors.red),
        ),
        Text(
          'aa',
          style: Theme.of(context).textTheme.headline1?.copyWith(color: Colors.red),
        ),
      ],
    );
  }
}

class BodyText extends StatelessWidget {
  const BodyText({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headline1?.copyWith(color: Colors.red),
    );
  }
}

class CustomTexts extends Text {
  const CustomTexts(String data) : super(data);

  CustomTexts.bodyText(String data, {required BuildContext context})
      : super(data, style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.red));

  CustomTexts.headline1(String data, {required BuildContext context})
      : super(data, style: Theme.of(context).textTheme.headline1?.copyWith(color: Colors.red));
  CustomTexts.bodyText(String data, {required BuildContext context})
      : super(data, style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.red));

  CustomTexts.headline1(String data, {required BuildContext context})
      : super(data, style: Theme.of(context).textTheme.headline1?.copyWith(color: Colors.red));
  CustomTexts.bodyText(String data, {required BuildContext context})
      : super(data, style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.red));

  CustomTexts.headline1(String data, {required BuildContext context})
      : super(data, style: Theme.of(context).textTheme.headline1?.copyWith(color: Colors.red));
}
