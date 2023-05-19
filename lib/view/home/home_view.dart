import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:project_1/view/home/home_view_model.dart';

class HomeView extends ConsumerWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final status = ref.watch(
      homeViewModelProvider.select((value) => value.status),
    );

    final meta = ref.watch(homeViewModelProvider.select((value) => value.meta));

    final data = ref.watch(homeViewModelProvider.select((value) => value.data));

    return status == HomeViewStatus.loading
        ? const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          )
        : status == HomeViewStatus.error
            ? const Scaffold(
                body: Center(
                  child: Text('Something went wrong :('),
                ),
              )
            : Scaffold(
                appBar: AppBar(
                  title: Text(meta!.fundHouse),
                  centerTitle: true,
                ),
                body: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: double.infinity,
                          color: Colors.white,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 15),
                              Text("Scheme Type: ${meta.schemeType}"),
                              Text("Scheme Category: ${meta.schemeCategory}"),
                              Text("Scheme Code: ${meta.schemeCode}"),
                              Text("Scheme Name: ${meta.schemeName}"),
                              const SizedBox(height: 20),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: ListView.builder(
                              itemCount: data.length,
                              itemBuilder: (context, index) => Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8.0),
                                child: ListTile(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  tileColor: Colors.blue.shade300,
                                  title: Text(data[index].date),
                                  subtitle: Text(data[index].nav),
                                  leading: Text((index + 1).toString()),
                                ),
                              ),
                              shrinkWrap: true,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
  }
}
