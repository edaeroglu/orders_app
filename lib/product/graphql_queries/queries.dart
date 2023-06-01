class Queries {
  static const getOrders = r'''
     query MyQuery($orderid: order_by = desc) {
  orders(order_by: {orderid: $orderid}) {
    orderid
    orderdate
    shipperid
    customer {
      address
      city
      country
      contactname
      customername
      customerid
    }
    employee {
      notes
      lastname
      firstname
      birthdate
      employeeid
    }
    employeeid
    customerid
    shipper {
      phone
      shipperid
      shippername
    }
    order_details {
      orderid
      productid
      quantity
      orderdetailid
    }
  }
}
''';

  static const getCustomers = r'''
      query MyQuery {
        customers {
          customerid
          customername
        }
      }
''';

  static const getEmployees = r'''
    query MyQuery {
      employees {
        firstname
        lastname
        employeeid
      }
    }
''';

  static const getProducts = r'''
    query MyQuery {
      products {
        productid
        productname
      }
    }
''';

  static const getShippers = r'''
    query MyQuery {
      shippers {
        shipperid
        shippername
      }
    }
''';
}
