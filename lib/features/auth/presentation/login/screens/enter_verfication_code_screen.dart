import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import 'package:her_wallet/core/routes/app_routes.dart';
import 'package:her_wallet/core/shared/widgets/custom_elevated_button.dart';
import 'package:her_wallet/features/auth/presentation/login/widgets/otp_text_code.dart';

class EnterVerificationScreen extends StatelessWidget {
  const EnterVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        leading: IconButton(
          icon: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: AppColors.grey200,
            ),
            child: Icon(
              Icons.arrow_back_ios_new,
              color: AppColors.greyPrimary,
              size: 20,
            ),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Text(
                context.localizations.enterVerificationCode,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
               Text(
                context.localizations.verificationCodeLine,
                style: TextStyle(color: Color(0xFF757575), fontSize: 13.8),
              ),
              const SizedBox(height: 24),
        
              OtpTextField(),
              const SizedBox(height: 24),
              Center(
                child: const Text(
                  '00:59',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 28,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Text(
                    context.localizations.didnotReciveCode,
                    style: TextStyle(
                      color: AppColors.textSecondary,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(width: 8),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child:  Text(
                      context.localizations.resendCode,
                      style: TextStyle(
                        color: AppColors.mainColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.45),
              Padding(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.height * 0.08,
                ),
                child: CustomElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.newPassword);
                  },
                  text: context.localizations.confirmYourCode,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

