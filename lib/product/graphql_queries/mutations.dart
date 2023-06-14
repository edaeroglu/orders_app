class Mutations {
  static const insertOrder =
      r'''mutation MyMutation($customerid: Int = 90, $employeeid: Int = 5, $shipperid: Int = 10, $productid: Int = 18) {
  insert_orders_one(object: {employeeid: $employeeid, customerid: $customerid, shipperid: $shipperid, order_details: {data: {productid: $productid}}}) {
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
mutation MyMutation3($order_id: Int = 10570) {
  delete_order_details(where: {orderid: {_eq: $order_id}}) {
    affected_rows
  }
  delete_orders(where: {orderid: {_eq: $order_id}}) {
    affected_rows
  }
}

''';

  static const updateOrder = r'''
mutation MyMutation($customerid: Int = 90, $employeeid: Int = 5, $shipperid: Int = 3) {
  update_orders(where: {customerid: {_eq: $customerid}, employeeid: {_eq: $employeeid}, shipperid: {_eq: $shipperid}}) {
    returning {
      orderid
      employeeid
      shipperid
      customerid
    
    }
  }
}
 ''';
}
