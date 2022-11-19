import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../../../core/presentation/components/header.dart';
import '../widgets/widgets.dart';

class InformationPage extends StatelessWidget {
  const InformationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(24.0),
                child: Header(label: 'Информация'),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const MenuListItem(
                      label: 'Политика конфиденциальности',
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const MenuListItem(
                      label: 'Пользовательское соглашение',
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    MenuListItem(
                      label: 'Мы в ВКонтакте',
                      onTap: () => _launchURL('https://vk.com/checkthespot'),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    MenuListItem(
                      label: 'Мы в Telegram',
                      onTap: () =>
                          _launchURL('https://t.me/spotparking_community'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void _launchURL(String urlString) async {
  if (await canLaunchUrlString(urlString)) {
    await launchUrlString(urlString);
  } else {
    throw 'Could not launch $urlString';
  }
}
