import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../../../domain/models/shipper.dart';

class ShipperDetailsButton extends StatelessWidget {
  const ShipperDetailsButton({
    super.key,
    required this.shipper,
  });

  final Shipper? shipper;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text(
                'Shipper Details',
                style: TextStyle(color: Colors.orange[200]),
              ),
              content: SizedBox(
                height: 270,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Shipper Id: ${shipper?.shipperid}'),
                    Text('Shipper Name: ${shipper?.shippername}'),
                    Text('Shipper Phone: ${shipper?.phone}'),
                  ],
                ),
              ),
              actions: [
                TextButton(
                  child: Text(
                    'Close',
                    style: TextStyle(color: Colors.orange[200]),
                  ),
                  onPressed: () {
                    context.popRoute();
                  },
                ),
              ],
            );
          },
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.orange[200],
      ),
      child: const Text("Shipper Details"),
    );
  }
}
