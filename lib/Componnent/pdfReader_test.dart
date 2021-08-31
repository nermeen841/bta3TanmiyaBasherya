import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

import 'components/constants.dart';

class PDFReaderPage extends StatefulWidget {
  @override
  _PDFReaderPageState createState() => _PDFReaderPageState();
}

class _PDFReaderPageState extends State<PDFReaderPage> {
  String urlPDFPath = "";
  bool exists = true;
  int _totalPages = 0;
  int _currentPage = 0;
  bool pdfReady = false;
  late PDFViewController _pdfViewController;
  bool loaded = false;

  Future<File> getFileFromUrl(String url, {name}) async {
    var fileName = 'testonline';
    if (name != null) {
      fileName = name;
    }
    try {
      var data = await http.get(Uri.parse(url));
      var bytes = data.bodyBytes;
      var dir = await getApplicationDocumentsDirectory();
      File file = File("${dir.path}/" + fileName + ".pdf");
      print(dir.path);
      File urlFile = await file.writeAsBytes(bytes);
      return urlFile;
    } catch (e) {
      throw Exception("Error opening url file");
    }
  }

  void requestPersmission() async {
    // ignore: unused_local_variable
    var permission = Permission.storage;
  }

  @override
  void initState() {
    requestPersmission();
    getFileFromUrl("http://www.africau.edu/images/default/sample.pdf").then(
      (value) => {
        setState(() {
          // ignore: unnecessary_null_comparison
          if (value != null) {
            urlPDFPath = value.path;
            loaded = true;
            exists = true;
          } else {
            exists = false;
          }
        })
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print(urlPDFPath);
    if (loaded) {
      return Scaffold(
        body: PDFView(
          filePath: urlPDFPath,
          autoSpacing: true,
          enableSwipe: true,
          pageSnap: true,
          swipeHorizontal: true,
          nightMode: false,
          onError: (e) {
            //Show some error message or UI
          },
          onRender: (pages) {
            setState(() {
              // _totalPages = pages;
              pdfReady = true;
            });
          },
          onViewCreated: (PDFViewController vc) {
            setState(() {
              _pdfViewController = vc;
            });
          },
          onPageChanged: (page, totalPages) {
            setState(() {
              _currentPage = int.parse(page.toString());
            });
          },
          onPageError: (page, e) {},
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.chevron_left),
              iconSize: 50,
              color: Colors.black,
              onPressed: () {
                setState(() {
                  if (_currentPage > 0) {
                    _currentPage--;
                    _pdfViewController.setPage(_currentPage);
                  }
                });
              },
            ),
            Text(
              "${_currentPage + 1}/$_totalPages",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            IconButton(
              icon: Icon(Icons.chevron_right),
              iconSize: 50,
              color: Colors.black,
              onPressed: () {
                setState(() {
                  if (_currentPage < _totalPages - 1) {
                    _currentPage++;
                    _pdfViewController.setPage(_currentPage);
                  }
                });
              },
            ),
          ],
        ),
      );
    } else {
      if (exists) {
        //Replace with your loading UI
        return Scaffold(
          body: Column(
            textDirection: TextDirection.rtl,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: Image.asset("assets/images/sand-clock.png")),
              Center(
                child: Text(
                  "يتم التحميل الان .....",
                  style: headingStyle.copyWith(fontSize: 20),
                ),
              ),
            ],
          ),
        );
      } else {
        //Replace Error UI
        return Scaffold(
          appBar: AppBar(
            backgroundColor: HexColor("#2972B7"),
            automaticallyImplyLeading: false,
            iconTheme: IconThemeData(color: Colors.white),
            actions: [
              InkWell(
                onTap: () => Navigator.pop(context),
                child: Icon(Icons.arrow_forward_ios),
              ),
            ],
          ),
          body: Column(
            textDirection: TextDirection.rtl,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                  child: Image.asset(
                "assets/images/PAGENOTFOUND.jpeg",
                width: 350,
                height: 200,
                fit: BoxFit.contain,
              )),
              Center(
                child: Text(
                  "الملف غير متوفر",
                  style: headingStyle.copyWith(fontSize: 20),
                ),
              ),
            ],
          ),
        );
      }
    }
  }
}
