import 'package:flutter/material.dart';
import 'package:xhxlib/utlis/google_mobile_util.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import '../generated/l10n.dart';
import 'about_view.dart';
import 'web_view.dart';

class MeViewPage extends StatefulWidget {
  const MeViewPage({super.key});

  @override
  State<MeViewPage> createState() => _MeViewPageState();
}

class _MeViewPageState extends State<MeViewPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      GoogleMobileUtil().createBannerAd(callWidget: (ad) {
        setState(() {});
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.grey[100],
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Card(
              margin: const EdgeInsets.all(12),
              elevation: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // TextButton.icon(
                  //   onPressed: () {},
                  //   icon: Icon(Icons.thumb_up),
                  //   label: Container(
                  //     width: double.infinity,
                  //     child: Text(S.of(context).givePraise),
                  //   ),
                  // ),
                  // TextButton.icon(
                  //   onPressed: () async {
                  //     final result = await Share.shareWithResult(
                  //         'check out my website https://example.com');
                  //
                  //     if (result.status == ShareResultStatus.success) {
                  //       print('Thank you for sharing my website!');
                  //     }
                  //   },
                  //   icon: Icon(Icons.share_outlined),
                  //   label: Container(
                  //     width: double.infinity,
                  //     child: Text(S.of(context).shareApp),
                  //   ),
                  // ),
                  TextButton.icon(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AboutViewPage()));
                    },
                    icon: Icon(Icons.help_outlined),
                    label: Container(
                      width: double.infinity,
                      child: Text(S.of(context).aboutUs),
                    ),
                  ),
                  TextButton.icon(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => WebViewPage(
                                    title: S.of(context).userAgreement,
                                    url:
                                        "https://www.termsfeed.com/live/2ee61f4e-0d09-437d-9f07-7223a04b4b80",
                                    // url: "assets/privacyPolicy.html",
                                  )));
                    },
                    icon: Icon(Icons.link),
                    label: Container(
                      width: double.infinity,
                      child: Text(S.of(context).userAgreement),
                    ),
                  ),
                  TextButton.icon(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => WebViewPage(
                                    title: S.of(context).privacyPolicy,
                                    url:
                                        "https://www.termsfeed.com/live/e3bfa55c-e1a1-4dcc-b5a2-f39586f053dd",
                                    // url: "assets/privacyPolicy.html",
                                  )));
                    },
                    icon: Icon(Icons.privacy_tip_outlined),
                    label: Container(
                      width: double.infinity,
                      child: Text(S.of(context).privacyPolicy),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: googleWidget(),
          )
        ],
      ),
    );
  }

  googleWidget() {
    return GoogleMobileUtil.instance.anchoredAdaptiveAd != null
        ? SizedBox(
            height: GoogleMobileUtil.instance.anchoredAdaptiveAd!.size.height
                .toDouble(),
            width: GoogleMobileUtil.instance.anchoredAdaptiveAd!.size.width
                .toDouble(),
            child: AdWidget(ad: GoogleMobileUtil.instance.anchoredAdaptiveAd!),
          )
        : Container();
  }
}
