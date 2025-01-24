import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:habbit/providers/providers.dart';
import 'package:habbit/utils/extensions.dart';
import 'package:gap/gap.dart';
import 'package:habbit/utils/habit_categories.dart';
import 'package:habbit/widgets/circle_container.dart';

class SelectCategory extends ConsumerWidget {
  const SelectCategory({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final selectedCategory = ref.watch(categoryProvider);
    final categories = HabitCategories.values.toList();
    return SizedBox(
      height: 60,
      child: Row(
        children: [
          Text(
            'Category',
            style: context.textTheme.titleLarge,
          ),
          const Gap(10),
          Expanded(
              child: ListView.separated(
            physics: const AlwaysScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (ctx, index) {
              final category = categories[index];

              return InkWell(
                onTap: () {
                  ref.read(categoryProvider.notifier).state = category;
                },
                borderRadius: BorderRadius.circular(20),
                child: CircleContainer(
                  color: category.color,
                  child: Icon(
                    category.icon,
                    color: const Color.fromARGB(19, 215, 215,
                        215), // category == selectedCategory ? context.colorScheme.primary: category.color,
                  ),
                ),
              );
            },
            separatorBuilder: (ctx, index) => const Gap(8),
            itemCount: categories.length,
          )),
        ],
      ),
    );
  }
}
