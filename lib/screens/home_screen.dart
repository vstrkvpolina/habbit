import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:habbit/utils/extensions.dart';
import 'package:gap/gap.dart';
import 'package:habbit/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;
    final deviceSize = context.deviceSize;

    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: deviceSize.height * 0.3,
                width: deviceSize.width,
                color: colors.primary,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DisplayWhiteText(
                      text: 'Dec, 2024',
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                    ),
                    DisplayWhiteText(
                      text: 'Habbits',
                      fontSize: 40,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 70,
            left: 0,
            right: 0,
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Container(
                    width: deviceSize.width,
                    height: deviceSize.height * 0.3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: colors.primaryContainer,
                    ),
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: 8,
                        padding: EdgeInsets.zero,
                        itemBuilder: (ctx, index) {
                          return const Text('Home');
                        }),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

// all fependency that i ll be use in thes project
// alalla