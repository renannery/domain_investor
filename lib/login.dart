import 'package:domain_investor/base_view.dart';
import 'package:domain_investor/login_model.dart';
import 'package:domain_investor/manage_list.dart';
import 'package:domain_investor/manage_list_model.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController pwdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Center(
              child: Image.asset(
                "assets/godaddy_2020_logo.png",
                height: 54,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 10, 16, 0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                  border: Border.all(
                    width: 1.0,
                    color: Color(0xffd3dbe0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextField(
                    textCapitalization: TextCapitalization.none,
                    textAlignVertical: TextAlignVertical.center,
                    controller: usernameController,
                    style: Theme.of(context).textTheme.subtitle,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        focusColor: Colors.red,
                        fillColor: Colors.teal,
                        labelStyle: TextStyle(
                          color: Colors.black,
                        ),
                        focusedBorder: InputBorder.none,
                        labelText: "Username or Customer #"),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 10, 16, 0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                  border: Border.all(
                    width: 1.0,
                    color: Color(0xffd3dbe0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextField(
                    style: Theme.of(context).textTheme.subtitle,
                    controller: pwdController,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                      border: InputBorder.none,
                      labelText: "Password",
                    ),
                  ),
                ),
              ),
            ),
            BaseView<LoginModel>(
              builder: (context, model, child) {
                return Padding(
                  padding: EdgeInsets.all(16),
                  child: Container(
                    width: double.infinity,
                    child: RaisedButton(
                      child: Text(
                        "Sign In",
                        style: TextStyle(fontSize: 20),
                      ),
                      onPressed: () async {
                        final success = await model.login(
                            usernameController.text, pwdController.text);
                        if (success) {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ManageList()),
                          );
                        }
                      },
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
