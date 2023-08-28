import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SideNaviBarController extends GetxController {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  var onSelect = [].obs;
  var sideOptions = [].obs;
  var onTap = true.obs;

  @override
  void onInit() {
    fatchOptions();
    super.onInit();
  }

  fatchOptions() {
    var options = [
      {
        'category': 'Dash Board',
        'icon': Icons.card_membership_rounded,
      },
      {
        'category': 'Invitations',
        'icon': Icons.person_add_alt_1_rounded,
      },
      {
        'category': 'Users',
        'icon': Icons.group_rounded,
      },
      {
        'category': 'Members',
        'icon': Icons.groups_rounded,
      },
      {
        'category': 'Add Relations',
        'icon': Icons.group_add_rounded,
      },
      {
        'category': 'Reports',
        'icon': Icons.report_problem_rounded,
      },
      {
        'category': 'FeedBacks',
        'icon': Icons.feedback_rounded,
      },
      {
        'category': 'Updates',
        'icon': Icons.update_rounded,
      },
      {
        'category': 'FAQ\'s',
        'icon': Icons.question_answer_rounded,
      },
      {
        'category': 'Products',
        'icon': Icons.shopping_bag_rounded,
      },
      {
        'category': 'Deleted Users',
        'icon': Icons.delete_outline_rounded,
      },
    ];
    sideOptions.value = options;
    onSelect.value =
        List.generate(options.length, ((index) => index == 0 ? true : false));
    // onSelect.value = options.map((e) => e['selected']).toList();
  }

  navigateToOptions(index) {
    onSelect.replaceRange(0, sideOptions.length,
        [for (int i = 0; i < sideOptions.length; i++) false]);
    onSelect[index] = true;
  }
}
