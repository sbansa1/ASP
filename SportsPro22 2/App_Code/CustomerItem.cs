using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;




    public class CustomerItem
    {
        public CustomerItem() { }

        public CustomerItem(Customer customer)
        {
            this.customer = customer;

        }

        public Customer customer { get; set; }

        public string Display()
        {
            string displayString = (customer.name + " " + customer.phone + " ; " + customer.email);

            return displayString;
        }


    }



