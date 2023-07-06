class Mutations {
  static const insertOrder = r'''
mutation MyMutation($customerid: Int = 90, $employeeid: Int = 5, $shipperid: Int = 10, $productid: Int = 18) {
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
mutation MyMutation($orderid: Int = 10586, $customerid: Int = 10, $employeeid: Int = 10, $shipperid: Int = 1) {
  update_orders(where: {orderid: {_eq: $orderid}}, _set: {customerid: $customerid, employeeid: $employeeid, shipperid: $shipperid}) {
    returning{
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
}
 ''';

  static const insertShipper = r'''
mutation MyMutation($phone: String = "", $shippername: String = "") {
  insert_shippers_one(object: {phone: $phone, shippername: $shippername}) {
    phone
    shippername
    shipperid
  }
}''';

  static const deleteShipper = r'''
mutation MyMutation($shipperid: Int = 6) {
  delete_shippers(where: {shipperid: {_eq: $shipperid}}) {
    affected_rows
  }
}''';

  static const updateShipper = r'''
mutation MyMutation($shipperid: Int = 8, $phone: String = "", $shippername: String = "") {
  update_shippers(where: {shipperid: {_eq: $shipperid}}, _set: {phone: $phone, shippername: $shippername}) {
    returning {
      phone
      shipperid
      shippername
    }
  }
}''';

  static const insertEmployee = r'''
mutation MyMutation( $firstname: String = "", $lastname: String = "", $notes: String = "", ) {
  insert_employees_one(object: {firstname: $firstname, lastname: $lastname, notes: $notes, }) {

    employeeid
    firstname
    lastname
    notes
  }}''';

  static const deleteEmployee = r'''
mutation MyMutation($employeeid: Int = 13) {
  delete_employees(where: {employeeid: {_eq: $employeeid}}) {
    affected_rows
  }
}''';

  static const updateEmployee = r'''
mutation MyMutation($employeeid: Int = 12, $birthdate: date = "2023-06-19", $firstname: String = "", $lastname: String = "", $notes: String = "") {
  update_employees(where: {employeeid: {_eq: $employeeid}}, _set: {birthdate: $birthdate, firstname: $firstname, lastname: $lastname, notes: $notes}) {
    returning {
      employeeid
      firstname
      lastname
      notes
      birthdate
    }
  }
}''';

  static const insertProduct = r'''
mutation MyMutation($productname: String = "", $unit: String = "", $price: numeric = 0) {
  insert_products_one(object: {productname: $productname, unit: $unit, price: $price}) {
    unit
    productname
    productid
    price
  }
}''';

  static const deleteProduct = r'''
mutation MyMutation($productid: Int = 79) {
  delete_products(where: {productid: {_eq: $productid}}) {
    affected_rows
  }
}''';

  static const updateProduct = r'''
mutation MyMutation($productid: Int = 77, $price: numeric = 0, $productname: String = "", $unit: String = "") {
  update_products(where: {productid: {_eq: $productid}}, _set: {price: $price, productname: $productname, unit: $unit}) {
    returning {
      price
      productid
      productname
      unit
    }
  }
}
''';
}
