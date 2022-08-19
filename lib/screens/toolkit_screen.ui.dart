import 'package:dark_theme/extensions/theme_extensions.dart';
import 'package:flutter/material.dart';

class ToolKitScreen extends StatelessWidget {
  const ToolKitScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 10.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                'https://media.istockphoto.com/vectors/gold-trophy-with-the-name-plate-of-the-winner-of-the-competition-vector-id1168757141',
              ),
              fit: BoxFit.cover,
              opacity: 0.25,
            ),
            color: theme.primaryColor,
            borderRadius: BorderRadius.circular(14),
          ),
          height: 100,
          child: Center(
            child: ListTile(
              onTap: () {
                // final categoryId = state.toolKitCategories[index].id;
                // notifier.goToToolkitCategoryPage(
                //   categoryId,
                // );
              },
              contentPadding: const EdgeInsets.only(left: 30),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'state.toolKitCategories[index].avatar',
                    style: theme.headlineSmall?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 30,
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'state.toolKitCategories[index].title',
                    style: theme.headlineSmall?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 25,
                    ),
                  )
                ],
              ),
              trailing: Container(
                margin: const EdgeInsets.only(right: 20),
                child: Icon(
                  Icons.arrow_forward_ios,
                  size: 30,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 10.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                'https://media.istockphoto.com/vectors/gold-trophy-with-the-name-plate-of-the-winner-of-the-competition-vector-id1168757141',
              ),
              fit: BoxFit.cover,
              opacity: 0.25,
            ),
            color: theme.primaryColor,
            borderRadius: BorderRadius.circular(14),
          ),
          height: 100,
          child: Center(
            child: ListTile(
              onTap: () {
                // final categoryId = state.toolKitCategories[index].id;
                // notifier.goToToolkitCategoryPage(
                //   categoryId,
                // );
              },
              contentPadding: const EdgeInsets.only(left: 30),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'state.toolKitCategories[index].avatar',
                    style: theme.headlineSmall?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 30,
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'state.toolKitCategories[index].title',
                    style: theme.headlineSmall?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 25,
                    ),
                  )
                ],
              ),
              trailing: Container(
                margin: const EdgeInsets.only(right: 20),
                child: Icon(
                  Icons.arrow_forward_ios,
                  size: 30,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 10.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                'https://media.istockphoto.com/vectors/gold-trophy-with-the-name-plate-of-the-winner-of-the-competition-vector-id1168757141',
              ),
              fit: BoxFit.cover,
              opacity: 0.25,
            ),
            color: theme.primaryColor,
            borderRadius: BorderRadius.circular(14),
          ),
          height: 100,
          child: Center(
            child: ListTile(
              onTap: () {
                // final categoryId = state.toolKitCategories[index].id;
                // notifier.goToToolkitCategoryPage(
                //   categoryId,
                // );
              },
              contentPadding: const EdgeInsets.only(left: 30),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'state.toolKitCategories[index].avatar',
                    style: theme.headlineSmall?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 30,
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'state.toolKitCategories[index].title',
                    style: theme.headlineSmall?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 25,
                    ),
                  )
                ],
              ),
              trailing: Container(
                margin: const EdgeInsets.only(right: 20),
                child: Icon(
                  Icons.arrow_forward_ios,
                  size: 30,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 10.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                'https://media.istockphoto.com/vectors/gold-trophy-with-the-name-plate-of-the-winner-of-the-competition-vector-id1168757141',
              ),
              fit: BoxFit.cover,
              opacity: 0.25,
            ),
            color: theme.primaryColor,
            borderRadius: BorderRadius.circular(14),
          ),
          height: 100,
          child: Center(
            child: ListTile(
              onTap: () {
                // final categoryId = state.toolKitCategories[index].id;
                // notifier.goToToolkitCategoryPage(
                //   categoryId,
                // );
              },
              contentPadding: const EdgeInsets.only(left: 30),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'state.toolKitCategories[index].avatar',
                    style: theme.headlineSmall?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 30,
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'state.toolKitCategories[index].title',
                    style: theme.headlineSmall?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 25,
                    ),
                  )
                ],
              ),
              trailing: Container(
                margin: const EdgeInsets.only(right: 20),
                child: Icon(
                  Icons.arrow_forward_ios,
                  size: 30,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
