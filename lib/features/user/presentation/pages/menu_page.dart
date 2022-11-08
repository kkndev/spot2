import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '/core/presentation/components/components.dart';
import '../widgets/widgets.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(24.0),
                child: Header(label: 'Меню'),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ProfileListItem(
                      name: 'user_nickname',
                      telephone: '+7 (999) 832-12-55',
                      onTap: () => context.router.pushNamed('profile'),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    MenuListItem(
                      label: 'Подписка',
                      onTap: () => context.router.pushNamed('subscription'),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    MenuListItem(
                      label: 'Промокоды',
                      onTap: () => context.router.pushNamed('promoCodes'),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    MenuListItem(
                      label: 'Информация',
                      onTap: () => context.router.pushNamed('information'),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    MenuListItem(
                      label: 'Поддержка',
                      onTap: () => _launchURL('https://t.me/spot_report_bot'),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    MenuListItem(
                      label: 'Удалить аккаунт',
                      onTap: () => context.router.pushNamed('subscription'),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    MenuListItem(
                      label: 'Выйти',
                      onTap: () => context.router.pushNamed('subscription'),
                      isDanger: true,
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