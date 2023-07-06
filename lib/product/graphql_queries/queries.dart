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
      query MyQuery($customerid: order_by = desc) {
        customers(order_by: {customerid: $customerid}) {
          address
          city
          country
          contactname
          customername
          customerid
        }
      }
''';

  static const getEmployees = r'''
    query MyQuery($employeeid: order_by = desc) {
      employees(order_by: {employeeid: $employeeid}) {
        notes
        lastname
        firstname
        birthdate
        employeeid
      }
    }
''';

  static const getShippers = r'''
    query MyQuery($shipperid: order_by = desc) {
      shippers(order_by: {shipperid: $shipperid}){
        shipperid
        shippername
        phone
      }
    }
''';

  static const getProducts = r'''
    query MyQuery ($productid: order_by = desc){
      products(order_by: {productid: $productid}) {
        productid
        productname
        price
        unit
  }
}
''';
}
