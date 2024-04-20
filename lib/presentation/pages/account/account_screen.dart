import 'package:book_shop/injection.dart';
import 'package:book_shop/presentation/components/account/account_button.dart';
import 'package:book_shop/presentation/router/routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) => SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: Theme.of(context).colorScheme.primary,
                pinned: true,
                // snap: true,
                // floating: true,
                // expandedHeight: constraints.maxHeight * 0.228,
                // collapsedHeight: constraints.maxHeight * 0.12,
                toolbarHeight: 110,
                // bottom: PreferredSize(
                //   // preferredSize: Size.fromHeight(constraints.maxHeight * 0.12),
                //   child: Container(
                //     color: Theme.of(context).colorScheme.primary,
                //   ),
                // ),
                flexibleSpace: FlexibleSpaceBar(
                  expandedTitleScale: 1.3,
                  title: FittedBox(
                    fit: BoxFit.scaleDown,
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 16),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CircleAvatar(
                            radius: 35,
                            backgroundColor:
                                Theme.of(context).scaffoldBackgroundColor,
                            child: Icon(
                              Icons.person,
                              size: 50,
                              color: Theme.of(context)
                                  .primaryColor
                                  .withOpacity(0.7),
                            ),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                getIt<FirebaseAuth>().currentUser!.displayName!,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge!
                                    .copyWith(
                                      color: Colors.white,
                                    ),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Text(
                                getIt<FirebaseAuth>().currentUser!.email!,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      color: Colors.white,
                                    ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  titlePadding: const EdgeInsets.symmetric(horizontal: 20),
                ),
              ),
              SliverToBoxAdapter(
                  child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),

                  AccountButton(
                    title: Routes.editProfile.toLabel,
                    icon: Icons.person_rounded,
                    onTap: () {
                      context.push(Routes.editProfile.toFullPath);
                    },
                  ),
                  AccountButton(
                    title: Routes.changePassword.toLabel,
                    icon: Icons.lock_rounded,
                    onTap: () {
                      context.push(Routes.changePassword.toFullPath);
                    },
                  ),
                  // AccountButton(
                  //   title: 'Add Book',
                  //   icon: Icons.add_rounded,
                  //   onTap: () {
                  //     context.push(Routes.addBook.toFullPath);
                  //   },
                  // ),
                  // AccountButton(
                  //   title: 'Change Email',
                  //   icon: Icons.email_rounded,
                  //   onTap: () {},
                  // ),
                  // AccountButton(
                  //   title: 'Payment History',
                  //   icon: Iconsistory_rounded,
                  //   onTap: () {},
                  // ),
                  AccountButton(
                    title: 'Terms of use',
                    icon: Icons.description_rounded,
                    onTap: () {},
                  ),
                  AccountButton(
                    title: 'About us',
                    icon: Icons.info_rounded,
                    onTap: () {},
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  AccountButton(
                    title: 'Logout',
                    icon: Icons.logout_rounded,
                    textColor: Colors.red,
                    iconColor: Colors.red,
                    isLogout: true,
                    onTap: () {
                      getIt<FirebaseAuth>().signOut();
                    },
                  ),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
