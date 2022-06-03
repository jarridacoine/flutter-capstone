import 'package:capstone_flutter/models/job.dart';
import 'package:capstone_flutter/widgets/apply_modal/components/apply_button.dart';
import 'package:capstone_flutter/widgets/apply_modal/components/job_info.dart';
import 'package:capstone_flutter/widgets/apply_modal/components/logo_and_details.dart';
import 'package:capstone_flutter/widgets/custom_sized_box.dart';
import 'package:flutter/material.dart';

class ApplyModal extends StatefulWidget {
  final Job job;

  const ApplyModal({
    Key? key,
    required this.job,
  }) : super(key: key);

  @override
  State<ApplyModal> createState() => _ApplyModalState();
}

class _ApplyModalState extends State<ApplyModal> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          const VerticalHeightSpacing(height: 10),
          Container(
            height: 4,
            width: 80,
            color: const Color(0xFFE1E1E1),
          ),
          LogoAndDetails(job: widget.job),
          const VerticalHeightSpacing(height: 15),
          JobInfo(job: widget.job),
          const VerticalHeightSpacing(height: 15),
          const ApplyButton(),
          const VerticalHeightSpacing(height: 15),
        ],
      ),
    );
  }
}
