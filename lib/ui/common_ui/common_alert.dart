import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

bool _isDialogShowing = false;

void noCallBack() {}

void closeAlert(context) {
  if (_isDialogShowing) {
    _isDialogShowing = true;
    Navigator.pop(context);
  }
  _isDialogShowing = false;
}

Future<dynamic> commonAlertDialog(BuildContext context, String title,
    String msg, void Function() okayCallBack,
    {void Function() cancelCallBack = noCallBack,
      Color iconColor = Colors.black,
      int timer = 0}) async {
  //AlertDialog alert = AlertDialog();
  // var subscription = future.asStream().listen(_closeAlert);
  //  var future = Future.delayed(const Duration(seconds: 10),  () => {_closeAlert(context)});
  showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return MyDialog(
            futureContext: context,
            title: title,
            msg: msg,
            okayCallBack: okayCallBack,
            iconColor: iconColor,
          );
      });
}

class MyDialog extends StatefulWidget {
  late BuildContext futureContext;
  late String title;
  late String msg;
  late void Function() okayCallBack;
  void Function() cancelCallBack = () => {};
  Color iconColor = Colors.black;


  MyDialog(
      {Key? key,
        required this.futureContext,
        required this.title,
        required this.msg,
        required this.okayCallBack,
        cancelCallBack,
        this.iconColor = Colors.black,
       })
      : super(key: key);
  @override
  State<MyDialog> createState() => _MyDialogState();
}

class _MyDialogState extends State<MyDialog> {
  int selectedRadio = 0;
  late BuildContext futureContext;
  late String title;
  late String msg;
  late void Function() okayCallBack;
  late void Function() cancelCallBack = () => {};
  late Color iconColor;
  late int timer = 0;
  // late Timer setInterval;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    futureContext = widget.futureContext;
    title = widget.title;
    msg = widget.msg;
    okayCallBack = widget.okayCallBack;
    cancelCallBack = widget.cancelCallBack;
    iconColor = widget.iconColor;


  }



  @override
  Widget build(BuildContext context) {
    _isDialogShowing = true;


    return AlertDialog(
      title: Container(
        child: Text(
          title,
          style: const TextStyle(fontSize: 25),
        ),
      ),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide(color: iconColor)),


      iconColor: iconColor,
      content: Text(msg),
      actions: [
        ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
                onPressed: () =>
                {cancelCallBack.call(), Navigator.pop(context)},
                child: const Text('Cancel')),
            ElevatedButton(
                onPressed: () => {okayCallBack.call(), Navigator.pop(context)},
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(iconColor)),
                child: const Text('Yes')),
          ],
        )

      ],
    );
  }
}