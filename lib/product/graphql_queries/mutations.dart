class Mutations {
  static const insertOrder =
      r'''mutation MyMutation($customerid: Int = 90, $employeeid: Int = 5, $orderdate: date = now, $shipperid: Int = 3, $productid: Int = 11, $quantity: Int = 13) {
  insert_orders_one(object: {customerid: $customerid, employeeid: $employeeid, orderdate: $orderdate, shipperid: $shipperid, order_details: {data: {productid: $productid, quantity: $quantity}}}) {
    orderid
  }
}
''';
}
