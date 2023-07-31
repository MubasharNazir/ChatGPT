import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:medecine_donation_app/providers/active_theme_provider.dart';
import 'package:medecine_donation_app/widgets/theme_switch.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(
        'ChatBot',
        style: TextStyle(color: Theme.of(context).colorScheme.secondary),
      ),
      actions: [
        Row(
          children: [
            Consumer(
              builder: (context, ref, child) => Icon(
                  ref.watch(activeThemeProvider) == Themes.dark
                      ? Icons.dark_mode
                      : Icons.light_mode),
            ),
            SizedBox(
              width: 8,
            ),
            ThemeSwitch(),
          ],
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60);
}
