import 'package:auto_route/auto_route.dart';
import 'package:deneme/features/orders/presentation/provider/shipper_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../../product/routes/routes.dart';

@RoutePage()
class ShipperView extends ConsumerWidget {
  const ShipperView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () {
                context.router.push(const HomeRoute());
              },
            ),
            backgroundColor: Colors.red[200]),
        body: ref.watch(shipperProvider).when(
              data: (state) {
                return ListView.builder(
                  itemCount: state.shippers.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        context.router.push(UpdateShipperRoute(
                          shipperId: state.shippers[index].shipperid ?? 0,
                          selectShipper: state.shippers[index],
                        ));
                      },
                      child: ListTile(
                        title:
                            Text(state.shippers[index].shippername.toString()),
                        subtitle: Text(state.shippers[index].phone ?? ""),
                      ),
                    );
                  },
                );
              },
              error: (error, stackTrace) => Text(error.toString()),
              loading: () => const Center(
                  child: CircularProgressIndicator(
                color: Colors.blue,
              )),
            ),
      ),
    );
  }
}
