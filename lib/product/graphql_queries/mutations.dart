class Mutations {
  static const insertOrder =
      r'''mutation MyMutation($customerid: Int = 90, $employeeid: Int = 5, $shipperid: Int = 10) {
  insert_orders_one(object: {employeeid: $employeeid, customerid: $customerid, shipperid: $shipperid}) {
    orderid
    orderdate
    employeeid
    shipperid
    customerid
    customer {
      address
      city
      contactname
      country
      customerid
      customername
    }
    employee {
      birthdate
      employeeid
      firstname
      lastname
      notes
    }
    shipper {
      phone
      shipperid
      shippername
    }
    order_details {
      orderid
      orderdetailid
      productid
      quantity
    }
  }
}

''';
  static const deleteOrder = r'''
mutation MyMutation2($order_id: Int!) {
  delete_orders(where: {orderid: {_eq: $order_id}}) {
    affected_rows
  }
}
''';
}
