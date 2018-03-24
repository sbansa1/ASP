using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

    public class Customer
    {
        private Customer customer;

        public Customer(Customer customer)
        {
            this.customer = customer;
        }
    public Customer()
    {

    }

        public String customerID { get; set; }
        public String name { get; set; }
        public String address { get; set; }
        public String city { get; set; }
        public String state { get; set; }
        public String zipCode { get; set; }
        public String phone { get; set; }
        public String email { get; set; }


    }

