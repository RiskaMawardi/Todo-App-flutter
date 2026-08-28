import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
      body:  SafeArea(
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
             const CommonTextField(title: 'Task Title', hintText: 'Task Title'),
             const Gap(16),
             SelectCategory(),
             Gap(16),
             SelectDateTime(),
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
      ),
    );
  }
}