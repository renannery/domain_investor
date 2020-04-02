import 'package:domain_investor/base_view.dart';
import 'package:domain_investor/main.dart';
import 'package:domain_investor/model/account_view_model.dart';
import 'package:domain_investor/view/action_button_widget.dart';
import 'package:flutter/material.dart';

class AccountView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: BaseView<AccountModel>(
                    onModelReady: (model) => model.init(),
                    builder: (context, model, child) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            model.name(),
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal,
                              letterSpacing: -0.3999999999999997,
                            ),
                          ),
                          Text(
                            model.email(),
                            style: TextStyle(
                              fontSize: 14,
                              color: MyApp.subtitleColor,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal,
                              letterSpacing: -0.175,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 27.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Customer Number",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: MyApp.subtitleColor,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: -0.175,
                                  ),
                                ),
                                Text(
                                  model.id(),
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    fontStyle: FontStyle.normal,
                                    letterSpacing: -0.3999999999999997,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 28.0),
                                  child: ActionButtonWidget(
                                    "Updated Profile",
                                    "Change your password, contact email, and more.",
                                    showChevron: true,
                                    horizontalPadding: 0,
                                  ),
                                ),
                                ActionButtonWidget(
                                  "Payment Profiles",
                                  "Add, delete, or modify payment methods",
                                  showChevron: true,
                                  horizontalPadding: 0,
                                ),
                                ActionButtonWidget(
                                  "Address Book",
                                  "Manage the contacts tied to your domains",
                                  showChevron: true,
                                  horizontalPadding: 0,
                                ),
                                ActionButtonWidget(
                                  "Help Center",
                                  "We’re here with the help you need.",
                                  showChevron: true,
                                  horizontalPadding: 0,
                                ),
                                ActionButtonWidget(
                                  "Default Settings",
                                  "New registrations will always have these settings",
                                  showChevron: true,
                                  horizontalPadding: 0,
                                ),
                                ActionButtonWidget(
                                  "Sign Out",
                                  null,
                                  horizontalPadding: 0,
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    })),
          ),
        ),
      ),
    );
  }
}
