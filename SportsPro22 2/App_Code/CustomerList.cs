using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


    public class CustomerList
    {
        private List<CustomerItem> cust;
    
  public CustomerList()
        {
           cust = new List<CustomerItem>();
        }


        public int Count
        {
            get { return cust.Count; }
        }

        public CustomerItem this[int index]
        {
            get { return cust[index]; }

        }
        public CustomerItem this[String name]
        {
            get
            {
                foreach (CustomerItem cu in cust)
                    if (cu.customer.name == name) return cu;
                return null;

            }


        }

        public static CustomerList GetCustomer()
        {
            CustomerList customer = (CustomerList)HttpContext.Current.Session["Customer"];
            if (customer == null)
                HttpContext.Current.Session["Customer"] = new CustomerList();
            return (CustomerList)HttpContext.Current.Session["Customer"];
        }

        public void AddItem(Customer custome)
        {
            CustomerItem c = new CustomerItem(custome);
            cust.Add(c);
        }

        public void RemoveAt(int index)
        {
            cust.RemoveAt(index);
        }

        public void Clear()
        {
            cust.Clear();
        }
        
    }
