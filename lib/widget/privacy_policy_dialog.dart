import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../generated/l10n.dart';
import '../page/web_view.dart';

class PrivacyPolicyDialog extends StatelessWidget {
  const PrivacyPolicyDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Dialog(
        child: IntrinsicHeight(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                child: Text(
                  S.of(context).userAgreement,
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              Container(
                height: 240,
                padding: const EdgeInsets.fromLTRB(15, 10, 15, 20),
                child: Scrollbar(
                  child: SingleChildScrollView(
                    child: Text.rich(
                      TextSpan(children: [
                        TextSpan(
                          text: S.of(context).userAgreementTip,
                          style: TextStyle(
                              fontSize: 14,
                              letterSpacing: 1.3,
                              height: 1.5,
                              decoration: TextDecoration.none),
                        ),
                        TextSpan(
                            text: "《${S.of(context).userAgreement}》",
                            style: const TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF537FB7),
                              fontSize: 14,
                              letterSpacing: 1.3,
                              height: 1.5,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () async {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => WebViewPage(
                                          title: S.of(context).userAgreement,
                                          url:
                                          "https://www.termsfeed.com/live/2ee61f4e-0d09-437d-9f07-7223a04b4b80",
                                          // url: "assets/privacyPolicy.html",
                                        )));
                              }),
                        TextSpan(
                          text: S.of(context).and,
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1.3,
                              height: 1.5,
                              fontSize: 14,
                              decoration: TextDecoration.none),
                        ),
                        TextSpan(
                            text: "《${S.of(context).privacyPolicy}》",
                            style: const TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF537FB7),
                              fontSize: 14,
                              letterSpacing: 1.3,
                              height: 1.5,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () async {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => WebViewPage(
                                          title: S.of(context).privacyPolicy,
                                          url:
                                          "https://www.termsfeed.com/live/e3bfa55c-e1a1-4dcc-b5a2-f39586f053dd",
                                          // url: "assets/privacyPolicy.html",
                                        )));
                              }),
                      ]),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FilledButton(
                    child: Text(S.of(context).agree),
                    onPressed: () {
                      Navigator.of(context).pop(true);
                    },
                  ),
                ],
              ),
              SizedBox(height: 20)
            ],
          ),
        ),
      ),
    );
  }
}
