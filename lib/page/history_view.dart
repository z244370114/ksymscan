import 'package:flutter/material.dart';
import 'package:ksymscan/common/application.dart';
import 'package:ksymscan/page/qr_create_view.dart';

import '../common/c_key.dart';
import '../generated/l10n.dart';
import '../model/qr_bar_data.dart';
import '../utils/event_bus.dart';
import '../utils/img_util.dart';
import '../utils/pub_method.dart';
import 'bar_create_view.dart';

class HistoryViewPage extends StatefulWidget {
  const HistoryViewPage({super.key});

  @override
  State<HistoryViewPage> createState() => _HistoryViewPageState();
}

class _HistoryViewPageState extends State<HistoryViewPage> {
  var qrbarDataList = [];

  var isShow = false;

  @override
  void initState() {
    super.initState();
    EventBus.getDefault().register(this, (event) {
      if (event is QrBarData) {
        qrbarDataList.insert(0, event);
      } else if (event == 'isHistory') {
        if (!isShow) {
          isShow = true;
          if (Application.getStorage.hasData(CKey.listQrBarData)) {
            var listQrbarData = Application.getQrBarDataList();
            for (var item in listQrbarData) {
              qrbarDataList.add(QrBarData.fromJson(item));
            }
          }
        }
      } else if (event == 'clear') {
        Application.getStorage.remove(CKey.listQrBarData);
        qrbarDataList.clear();
      }
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: qrbarDataList.length > 0
          ? ListView.builder(
              padding: const EdgeInsets.only(top: 0),
              itemCount: qrbarDataList.length,
              itemBuilder: (context, index) => _buildItem(qrbarDataList[index]),
            )
          : Container(
              alignment: Alignment.center,
              child: Text(
                S.of(context).noData,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
    );
  }

  Widget _buildItem(QrBarData qrBarData) {
    return InkWell(
      onTap: () {
        if (qrBarData.enumType!.isNotEmpty) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => QrCreateViewPage(
                qrBarData: qrBarData,
              ),
            ),
          );
        } else {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => BarCreateViewPage(
                qrBarData: qrBarData,
              ),
            ),
          );
        }
      },
      child: Card(
        margin: const EdgeInsets.all(10),
        elevation: 1,
        child: ListTile(
          title: Text(
            qrBarData.title!,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          leading: qrBarData.enumType!.isNotEmpty
              ? Icon(
                  IconData(
                    qrBarData.iconUrl!,
                    fontFamily: 'MaterialIcons',
                  ),
                )
              : Image(
                  image: ImgUtil.getAssetImage(qrBarData.imgUrl!),
                  width: 50,
                  height: 50,
                ),
          subtitle: qrBarData.contents!.isNotEmpty
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: qrBarData.contents!
                      .map(
                        (e) => Text(
                          e,
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                      )
                      .toList(),
                )
              : Container(),
          trailing: IconButton.filledTonal(
            onPressed: () {
              PubMethodUtils.copyToClipboard(context,qrBarData.content!);
            },
            icon: Icon(
              Icons.copy_outlined,
            ),
          ),
        ),
      ),
    );
  }
}
