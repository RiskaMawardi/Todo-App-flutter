import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:todo/widgets/widgets.dart';

class CreateTaskScreen extends StatelessWidget {
    static CreateTaskScreen builder(BuildContext context, GoRouterState state) => 
  const CreateTaskScreen();
  const CreateTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const DisplayWhiteText(text: 'Add New Task'),
      ),
      body:  SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
           const CommonTextField(title: 'Task Title', hintText: 'Task Title'),
           const Gap(16),
           const Row(
            children: [
              Expanded(
                child: CommonTextField(
                  title: 'Date', 
                  hintText: 'Aug, 14'
                )
              ),
               Gap(16),
              Expanded(
                child: CommonTextField(
                  title: 'Time', 
                  hintText: '15:35'
                ),
              ),
            ],
           ),
            Gap(16),
           const CommonTextField(
              title: 'Note', 
              hintText: 'Task note',
              maxLines: 5,
            ),
            Gap(60),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.primary,
                foregroundColor: Colors.white,
              ), 
              child: Text('Save'),
            )
          ],
        ),
      ),
    );
  }
}