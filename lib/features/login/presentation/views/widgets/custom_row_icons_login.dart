import 'package:flutter/material.dart';

import '../../../../../constance.dart';
import '../../../../../core/widgets/custom_circle_avatar_login_icons.dart';

class CustomRowIconsLogin extends StatelessWidget {
  const CustomRowIconsLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 300),
      child: Expanded(
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0))),
          child: Column(
            children: [
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      color: kPrimaryColor,
                      height: 1.0,
                      width: 100,
                    ),
                    const Text('OR'),
                    Container(
                      color: kPrimaryColor,
                      height: 1.0,
                      width: 100,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20.0,),
               const Padding(
                padding: EdgeInsets.only(bottom: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomCircleAvatarLoginIcon(
                      isImage: false,
                      text: 'f',
                    ),
                    CustomCircleAvatarLoginIcon(
                        image: 'assets/images/ios 1.png', isImage: true),
                    CustomCircleAvatarLoginIcon(
                      image: 'assets/images/Google__G__Logo 1.png',
                      isImage: true,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
