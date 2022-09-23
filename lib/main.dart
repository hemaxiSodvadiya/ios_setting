import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: IosHomePage(),
    );
  }
}

class IosHomePage extends StatefulWidget {
  const IosHomePage({Key? key}) : super(key: key);

  @override
  State<IosHomePage> createState() => _IosHomePageState();
}

class _IosHomePageState extends State<IosHomePage> {
  TextStyle mainTextStyle = const TextStyle(
    fontSize: 20,
    color: CupertinoColors.inactiveGray,
    fontWeight: FontWeight.w600,
  );

  TextStyle tittleTextStyle = const TextStyle(
    fontSize: 16,
    color: CupertinoColors.black,
    fontWeight: FontWeight.bold,
  );

  TextStyle subtitleTextStyle = const TextStyle(
    fontSize: 16,
    color: CupertinoColors.inactiveGray,
    fontWeight: FontWeight.w500,
  );

  bool lockSwitchValue = true;
  bool fingerprintSwitchValue = false;
  bool passwordSwitchValue = true;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemGroupedBackground,
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: CupertinoColors.systemRed,
        middle: Text(
          "Settings UI",
          style: TextStyle(
              fontSize: 18,
              color: CupertinoColors.white,
              fontWeight: FontWeight.bold),
        ),
      ),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Container(
                padding: const EdgeInsets.only(
                  left: 15,
                  top: 20,
                ),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Common",
                  style: mainTextStyle,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                height: 40,
                color: CupertinoColors.white,
                child: Row(
                  children: [
                    const Icon(
                      CupertinoIcons.add,
                      color: CupertinoColors.inactiveGray,
                      size: 20,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Language",
                      style: tittleTextStyle,
                    ),
                    const Spacer(),
                    Text(
                      "English",
                      style: subtitleTextStyle,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Icon(
                      CupertinoIcons.right_chevron,
                      color: CupertinoColors.inactiveGray,
                      size: 20,
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 0.5,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                height: 40,
                color: CupertinoColors.white,
                child: Row(
                  children: [
                    const Icon(
                      CupertinoIcons.cloud,
                      color: CupertinoColors.inactiveGray,
                      size: 20,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Environment",
                      style: tittleTextStyle,
                    ),
                    const Spacer(),
                    Text(
                      "Production",
                      style: subtitleTextStyle,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Icon(
                      CupertinoIcons.right_chevron,
                      color: CupertinoColors.inactiveGray,
                      size: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Column(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 15),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Account",
                  style: mainTextStyle,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                height: 40,
                color: CupertinoColors.white,
                child: Row(
                  children: [
                    const Icon(
                      CupertinoIcons.phone_fill,
                      color: CupertinoColors.inactiveGray,
                      size: 20,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Phone Number",
                      style: tittleTextStyle,
                    ),
                    const Spacer(),
                    const Icon(
                      CupertinoIcons.right_chevron,
                      color: CupertinoColors.inactiveGray,
                      size: 20,
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 0.5,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                height: 40,
                color: CupertinoColors.white,
                child: Row(
                  children: [
                    const Icon(
                      CupertinoIcons.mail_solid,
                      color: CupertinoColors.inactiveGray,
                      size: 20,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Email",
                      style: tittleTextStyle,
                    ),
                    const Spacer(),
                    const Icon(
                      CupertinoIcons.right_chevron,
                      color: CupertinoColors.inactiveGray,
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 0.5,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                height: 40,
                color: CupertinoColors.white,
                child: Row(
                  children: [
                    const Icon(
                      CupertinoIcons.square_arrow_right,
                      color: CupertinoColors.inactiveGray,
                      size: 20,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Sign out",
                      style: tittleTextStyle,
                    ),
                    const Spacer(),
                    const Icon(
                      CupertinoIcons.right_chevron,
                      color: CupertinoColors.inactiveGray,
                      size: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Column(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 15),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Secutiry",
                  style: mainTextStyle,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 40,
                padding: const EdgeInsets.all(10),
                color: CupertinoColors.white,
                child: Row(
                  children: [
                    const Icon(
                      CupertinoIcons.add,
                      color: CupertinoColors.inactiveGray,
                      size: 20,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Lock app in background",
                      style: tittleTextStyle,
                    ),
                    const Spacer(),
                    CupertinoSwitch(
                      activeColor: CupertinoColors.systemRed,
                      value: lockSwitchValue,
                      onChanged: (bool value) {
                        setState(() {
                          lockSwitchValue = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 0.5,
              ),
              Container(
                height: 40,
                padding: const EdgeInsets.all(10),
                color: CupertinoColors.white,
                child: Row(
                  children: [
                    const Icon(
                      CupertinoIcons.add,
                      color: CupertinoColors.inactiveGray,
                      size: 20,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Use fingerprint",
                      style: tittleTextStyle,
                    ),
                    const Spacer(),
                    CupertinoSwitch(
                      activeColor: CupertinoColors.systemRed,
                      value: fingerprintSwitchValue,
                      onChanged: (bool value) {
                        setState(() {
                          fingerprintSwitchValue = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 0.5,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                height: 40,
                color: CupertinoColors.white,
                child: Row(
                  children: [
                    const Icon(
                      CupertinoIcons.lock_fill,
                      color: CupertinoColors.inactiveGray,
                      size: 20,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Change password",
                      style: tittleTextStyle,
                    ),
                    const Spacer(),
                    CupertinoSwitch(
                      activeColor: CupertinoColors.systemRed,
                      value: passwordSwitchValue,
                      onChanged: (bool value) {
                        setState(() {
                          passwordSwitchValue = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Column(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 15),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Misc",
                  style: mainTextStyle,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                height: 40,
                color: CupertinoColors.white,
                child: Row(
                  children: [
                    const Icon(
                      CupertinoIcons.doc_text_fill,
                      color: CupertinoColors.inactiveGray,
                      size: 20,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Terms of Service",
                      style: tittleTextStyle,
                    ),
                    const Spacer(),
                    const Icon(
                      CupertinoIcons.right_chevron,
                      color: CupertinoColors.inactiveGray,
                      size: 20,
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 0.5,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                height: 40,
                color: CupertinoColors.white,
                child: Row(
                  children: [
                    const Icon(
                      CupertinoIcons.bookmark,
                      color: CupertinoColors.inactiveGray,
                      size: 20,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Open source Licenses",
                      style: tittleTextStyle,
                    ),
                    const Spacer(),
                    const Icon(
                      CupertinoIcons.right_chevron,
                      color: CupertinoColors.inactiveGray,
                      size: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
