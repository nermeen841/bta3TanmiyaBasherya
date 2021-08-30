import 'package:bta3_tanmya/Componnent/components/constants.dart';
import 'package:bta3_tanmya/Componnent/components/default_button.dart';
import 'package:flutter/material.dart';

class ContactusBody extends StatefulWidget {
  @override
  _ContactusBodyState createState() => _ContactusBodyState();
}

class _ContactusBodyState extends State<ContactusBody> {
  final formKey = GlobalKey<FormState>();

  String email = "";
  String name = "";
  String phone = "";
  String message = "";

  bool remember = false;

  final List<String> errors = [];

  void addError({required String error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({required String error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildNameFormField(),
                  spaceH(15),
                  buildEmailFormField(),
                  spaceH(15),
                  buildPhoneFormField(),
                  spaceH(15),
                  buildMessageFormField(),
                  spaceH(20),
                  DefaultButton(
                    text: "ارسال",
                    press: () {},
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  TextFormField buildNameFormField() {
    return TextFormField(
      obscureText: false,
      onSaved: (newValue) {
        setState(() {
          name = newValue.toString();
        });
      },
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kNamelNullError);
        }
        return null;
      },
      validator: (value) {
        if (value == null) {
          addError(error: kNamelNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "الاسم",
        hintText: "الاسم",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

////////////////////////////////////////////////////////////////////////////////////////////////////////
  TextFormField buildEmailFormField() {
    return TextFormField(
      obscureText: false,
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) {
        setState(() {
          email = newValue.toString();
        });
      },
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kEmailNullError);
        } else if (value.length >= 8) {
          removeError(error: kEmailNullError);
        }
        return null;
      },
      validator: (value) {
        if (value == null) {
          addError(error: kEmailNullError);
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          addError(error: kInvalidEmailError);
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "البريد الالكتروني",
        hintText: "البريد الالكتروني",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

////////////////////////////////////////////////////////////////////////////////////////
  TextFormField buildPhoneFormField() {
    return TextFormField(
      obscureText: false,
      keyboardType: TextInputType.phone,
      onSaved: (newValue) {
        setState(() {
          phone = newValue.toString();
        });
      },
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPhoneNumberNullError);
        } else if (value.length != 11) {
          removeError(error: kPhoneErrorval);
        }
        return null;
      },
      validator: (value) {
        if (value == null) {
          addError(error: kPhoneNumberNullError);
          return "";
        } else if (value.length != 11) {
          addError(error: kPhoneErrorval);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "رقم الهاتف",
        hintText: "رقم الهاتف",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  //////////////////////////////////////////////////////////////////////////////////////////////////////////////

  TextFormField buildMessageFormField() {
    return TextFormField(
      textAlign: TextAlign.start,
      maxLines: 4,
      obscureText: false,
      onSaved: (newValue) => message = newValue.toString(),
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kMessageErrorval);
        }
        return null;
      },
      validator: (value) {
        if (value == null) {
          addError(error: kMessageErrorval);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "اكتب رسالتك",
        hintText: "اكتب رسالتك",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }
}
