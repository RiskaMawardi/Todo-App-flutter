import 'package:flutter/material.dart';
import 'package:todo/data/data.dart';
import 'package:gap/gap.dart';
import 'package:todo/utils/extensions.dart';
import 'package:todo/widgets/widgets.dart';


class TaskTile extends StatelessWidget {
  const TaskTile({super.key, required this.tasks, this.onCompleted});
  final Task tasks;
  final Function(bool?)? onCompleted;

  @override
  Widget build(BuildContext context) {
    final style = context.textTheme;
    final double iconOpacity = tasks.isCompleted ? 0.65 : 0.90;
    final double backgroundOpacity = tasks.isCompleted ? 0.12 : 0.22;
    final textDecoration = tasks.isCompleted? TextDecoration.lineThrough : TextDecoration.none;
    final fontWeight = tasks.isCompleted? FontWeight.normal : FontWeight.bold;
    return Padding(
            padding: const EdgeInsets.only(
              left: 16,
              top: 10,
              bottom: 10,
            ),
            child: Row(
              children: [
                CircleContainer(
                  color: tasks.category.color.withOpacity(backgroundOpacity),
                  child: Center(
                    child: Icon(
                      tasks.category.icon,
                      color: tasks.category.color.withOpacity(iconOpacity),
                    ),
                  ),
                ),
                const Gap(16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        tasks.title,
                        style: style.titleMedium?.copyWith(
                          decoration: textDecoration,
                          fontSize: 20,
                          fontWeight: fontWeight,
                        ),
                      ),
                      Text(
                        tasks.time,
                        style: style.titleMedium?.copyWith(
                          decoration: textDecoration,
                        ),
                      ),
                    ],
                  ),
                ),
                Checkbox(
                  value: tasks.isCompleted, 
                  onChanged: onCompleted,
                ),
              ],
            ),
         );;
  }
}