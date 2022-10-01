import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  final String loginTitle = "YOGAPP";
  final String loginPicture =
      "https://www.innerjoy.app/wp-content/uploads/2021/06/Group-180-768x593.png";
  final String loginSubtitle =
      "Lorem ipsum dolar sit amet, consectetur adipiscing elit.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(elevation: 0, backgroundColor: Colors.transparent),
      body: Padding(
        padding: ProjectPadding.paddingHorizontalLarge,
        child: Column(
          children: [
            Padding(
              padding: ProjectPadding().dynamicTopPadding(height: 70),
              child: Title(title: loginTitle, titleSize: 30),
            ),
            Padding(
              padding: ProjectPadding().dynamicTopPadding(height: 40),
              child: Image.network(loginPicture),
            ),
            Padding(
              padding: ProjectPadding().dynamicTopPadding(height: 35),
              child: Title(title: loginSubtitle, titleSize: 15),
            ),
            Padding(
              padding: ProjectPadding().dynamicTopPadding(height: 60),
              child: const GetStartedButtton(),
            ),
            Padding(
              padding: ProjectPadding().dynamicTopPadding(height: 40),
              child: const TermsConditionsTextButton(),
            ),
          ],
        ),
      ),
    );
  }
}

class TermsConditionsTextButton extends StatelessWidget {
  const TermsConditionsTextButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: const Text(
        "Terms & Conditions",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}

class GetStartedButtton extends StatelessWidget {
  const GetStartedButtton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                blurRadius: 100,
                offset: const Offset(7, 15),
                color: const Color.fromARGB(255, 255, 255, 255).withOpacity(.5),
                spreadRadius: 8),
          ],
        ),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20), // <-- Radius
          ),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
            onPressed: () {},
            child: const Text("Get Started"),
          ),
        ),
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
    required this.title,
    required this.titleSize,
  }) : super(key: key);
  final double titleSize;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.headline5!.copyWith(
            fontSize: titleSize,
          ),
    );
  }
}

class ProjectPadding {
  static const EdgeInsets projectPaddingAll = EdgeInsets.all(20);
  static const EdgeInsets projecetPaddingBottom = EdgeInsets.only(bottom: 10);
  static const EdgeInsets paddingHorizontalLarge =
      EdgeInsets.symmetric(horizontal: 30);

  EdgeInsets dynamicTopPadding({required double height}) {
    return EdgeInsets.only(top: height);
  }
}
