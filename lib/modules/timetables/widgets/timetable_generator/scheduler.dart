import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Providers
import '../../providers/classes_selector_provider.dart';

// Helpers
import '../../../../helpers/constants/app_typography.dart';
import '../../../../helpers/constants/app_colors.dart';
import '../../../../helpers/constants/app_styles.dart';

// Routing
import '../../../../config/routes/app_router.dart';
import '../../../../config/routes/routes.dart';

// Widgets
import 'add_class_link.dart';
import 'classes_selector_item.dart';
import '../../../shared/widgets/custom_text_button.dart';

class Scheduler extends ConsumerWidget {
  const Scheduler({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final noOfSelectedClasses = ref.watch(
      classesSelectorProvider.select(
        (value) => value.selectedClasses.length,
      ),
    );
    return Scaffold(
      body: ListView.separated(
        padding: const EdgeInsets.only(top: 15),
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        itemCount: noOfSelectedClasses,
        separatorBuilder: (_, i) => Insets.gapH15,
        itemBuilder: (_, i) {
          if (i != (noOfSelectedClasses - 1)) {
            return ClassesSelectorItem(index: i);
          }
          return Column(
            children: [
              ClassesSelectorItem(index: i),

              Insets.gapH10,

              // Add Classes Button
              const AddClassLink(),

              const SizedBox(height: 60),
            ],
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: CustomTextButton.gradient(
          width: double.infinity,
          gradient: AppColors.buttonGradientPurple,
          onPressed: () {
            AppRouter.pushNamed(Routes.GeneratedTimetablesScreenRoute);
          },
          child: Consumer(
            builder: (context, ref, child) {
              return child!;
              // final authState = ref.watch(authProvider);
              // return authState.maybeWhen(
              // authenticating: () => const CustomCircularLoader(
              //     color: Colors.white,
              // ),
              //   orElse: () => child!,
              // );
            },
            child: Center(
              child: Text(
                'GENERATE',
                style: AppTypography.secondary.body16.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
