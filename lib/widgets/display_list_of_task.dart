import 'package:flutter/material.dart';

import 'package:todo/data/data.dart';
import 'package:todo/utils/extensions.dart';
import 'package:todo/widgets/common_container.dart';
import 'package:todo/widgets/task_details.dart';
import 'package:todo/widgets/task_tile.dart';

class DisplayListOfTask extends StatelessWidget {
  const DisplayListOfTask({super.key, required this.task, this.isCompletedTask = false});
  final List<Task> task;
  final bool isCompletedTask;

  @override
  Widget build(BuildContext context) {
    final deviceSize = context.deviceSized;
    final height = isCompletedTask? deviceSize.height * 0.25 : deviceSize.height * 0.3;
    final emptyTasksMessage = isCompletedTask? 'There is no completed task yet':'There is no task todo!';
    return CommonContainer(
      height: height,
      child: task.isEmpty? 
      Center(
        child: Text(
          emptyTasksMessage, 
          style: context.textTheme.headlineSmall,
        ),
      )
      :
      ListView.separated(
        shrinkWrap: true,
        itemCount: task.length,
        padding:  EdgeInsets.zero,
        itemBuilder: (ctx, index){
         final tasks = task[index];
          return InkWell(
            onLongPress: (){
              //delete todo
            },
            onTap: () async {
              //show details todo
              await showModalBottomSheet(
                context: context,
                isScrollControlled: true, 
                builder: (ctx){
                    return TaskDetails(task: tasks);
                });
            },
            child: TaskTile(tasks: tasks),
          );
        }, 
        separatorBuilder: (BuildContext context, int index) { 
          return const Divider(thickness: 1.5);
        },
      ),
    );
  }
}