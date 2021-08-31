import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flowder/flowder.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'components/constants.dart';

class DownloadButton extends StatefulWidget {
  const DownloadButton({Key? key}) : super(key: key);

  @override
  _DownloadButtonState createState() => _DownloadButtonState();
}

class _DownloadButtonState extends State<DownloadButton> {
  late DownloaderUtils options;
  late DownloaderCore core;
  late final String path;
  Dio dio = Dio();
  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  Future<void> initPlatformState() async {
    _setPath();
    if (!mounted) return;
  }

  void _setPath() async {
    // path = await ExtStorage.getExternalStoragePublicDirectory(
    //     ExtStorage.DIRECTORY_DOWNLOADS);

    path = (await getExternalStorageDirectory())!.path;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        options = DownloaderUtils(
          progressCallback: (current, total) {
            final progress = (current / total) * 100;
            print('Downloading: $progress');
          },
          file: File('$path/200MB.zip'),
          progress: ProgressImplementation(),
          onDone: () {
            showAlertDialog(context);
          },
          deleteOnCancel: true,
        );
        core = await Flowder.download(
            "http://www.africau.edu/images/default/sample.pdf", options);

        // download2(
        //     dio, "http://www.africau.edu/images/default/sample.pdf", path);
      },
      child: Row(
        textDirection: TextDirection.rtl,
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            color: HexColor("#03AB6A"),
            child: Center(
              child: Text(
                "تحميل",
                style: headingStyle.copyWith(fontSize: 14, color: Colors.white),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            color: HexColor("#099861"),
            child: Center(
              child: Icon(
                FontAwesomeIcons.download,
                color: Colors.white,
                size: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }

///////////////////////////////////////////////////////////////////////////////////////////////////////////

  // Future download2(Dio dio, String url, String savePath) async {
  //   try {
  //     Response response = await dio.get(
  //       url,
  //       onReceiveProgress: showAlertDialog(context),
  //       //Received data with List<int>
  //       options: Options(
  //           responseType: ResponseType.bytes,
  //           followRedirects: false,
  //           validateStatus: (status) {
  //             return status! < 500;
  //           }),
  //     );
  //     print(response.headers);
  //     File file = File(savePath);
  //     var raf = file.openSync(mode: FileMode.write);
  //     // response.data is List<int> type
  //     raf.writeFromSync(response.data);
  //     await raf.close();
  //   } catch (e) {
  //     print(e);
  //   }
  // }

///////////////////////////////////////////////////////////////////////////////////////////////////
  showAlertDialog(BuildContext context) {
    AlertDialog alert = AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      content: Container(
        height: 200,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20.0))),
        child: Column(
          textDirection: TextDirection.rtl,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                "assets/images/check.png",
                width: 200,
                height: 80,
                fit: BoxFit.contain,
                color: HexColor("#099861"),
              ),
            ),
            spaceH(20),
            Center(
              child: Text(
                "تم تحميل الكتاب بنجاح",
                style: headingStyle.copyWith(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            spaceH(30),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              textDirection: TextDirection.rtl,
              children: [
                TextButton(
                  child: Text(
                    "Cancel",
                    style: headingStyle.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  onPressed: () => Navigator.pop(context),
                ),
                TextButton(
                  child: Text(
                    "OK",
                    style: headingStyle.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  onPressed: () => Navigator.pop(context),
                )
              ],
            )
          ],
        ),
      ),
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
