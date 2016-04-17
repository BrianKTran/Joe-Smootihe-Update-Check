using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace SWA
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Service1" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select Service1.svc or Service1.svc.cs at the Solution Explorer and start debugging.
    public class Service1 : IService1
    {

       

        public string GetData(int value)
        {
            return string.Format("You entered: {0}", value);
        }

        public string AddTwoNumbers(int val1, int val2)
        {
            var sum = val1 + val2;
            return string.Format("Result: {0}", sum);

        }


        public CompositeType GetDataUsingDataContract(CompositeType composite)
        {
            if (composite == null)
            {
                throw new ArgumentNullException("composite");
            }
            if (composite.BoolValue)
            {
                composite.StringValue += "Suffix";
            }
            return composite;
        }

        public string dice()
        {
            Random random = new Random();
            int ranNum = random.Next(1, 7);
            return string.Format("Result: {0}", ranNum);

        }

        public string pie()
        {
            double dice = Math.PI;
            return string.Format("Result: {0}", dice);
        }

        public string Create(string custFirstName, string custLastName, string
         custEmail, string custPassword)
        {
            using (IST421JoeTeam4Entities entities = new IST421JoeTeam4Entities())
            {
                //Insert a Record
                //Create the custent cust obect
                tblSignUp cust = new tblSignUp();

                //cust.client_id = custID;

                cust.first_name = custFirstName;
                cust.last_name = custLastName;
                cust.email = custEmail;
                cust.uPassword = custPassword;
                //Call the method to add the object to the table
                entities.tblSignUps.Add(cust);
                //Save the changes to the DB
                entities.SaveChanges();
                //cust.ID will contain the record number
                if (cust.client_id > 0)
                    return cust.client_id.ToString();
                else
                    return "false";
            }

        }

    }
}
