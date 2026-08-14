import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:todo/config/routes/route_location.dart';
import 'package:todo/data/data.dart';
import 'package:todo/utils/utils.dart';
import 'package:todo/widgets/widgets.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  static HomeScreen builder(BuildContext context, GoRouterState state) => 
  const HomeScreen();
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;
    final deviceSize = context.deviceSized;

    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                 height: deviceSize.height * 0.3,
                 width: deviceSize.width,
                 color: colors.primary,
                 child : const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     DisplayWhiteText(
                      text: 'Aug 12, 2026',
                      fontWeight: FontWeight.normal,
                      fontSize: 20,
                    ),
                     DisplayWhiteText(
                      text: 'My Todo List',
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                    ),
                  ],
                 ),
              ),
            ],
          ),
          Positioned(
                top: 160,
                left: 0,
                right: 0,
                bottom: 0,
                child: SafeArea(
                  child: SingleChildScrollView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const DisplayListOfTask(task: [
                          Task(
                            title: 'Belajar hal baru', 
                            note: 'test', 
                            time: '13:00', 
                            date: 'Aug, 12', 
                            category: TaskCategories.education, 
                            isCompleted: false
                          ),
                          Task(
                            title: 'Bekerja', 
                            note: 'test', 
                            time: '08:00', 
                            date: 'Aug, 13', 
                            category: TaskCategories.work, 
                            isCompleted: false
                          ),
                        ]),
                        Gap(20),
                        Text(
                          'Completed!',
                          style: context.textTheme.headlineMedium,
                        ),
                        Gap(20),
                        const DisplayListOfTask(task: [Task(
                            title: 'Jajan Tuku', 
                            note: 'test', 
                            time: '13:45', 
                            date: 'Aug, 11', 
                            category: TaskCategories.health, 
                            isCompleted: true
                          ),
                          Task(
                            title: 'Checkout shopee', 
                            note: 'test', 
                            time: '09:16', 
                            date: 'Aug, 10', 
                            category: TaskCategories.social, 
                            isCompleted: true
                          ),
                        ], isCompletedTask: true,),
                        Gap(20),
                        ElevatedButton(
                          onPressed: () => context.push(RouteLocation.createTask),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Theme.of(context).colorScheme.primary,
                            foregroundColor: Colors.white,
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('Add new task'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
        ],
      )
    );
  }
}