using System;
using System.Collections.Generic;
using System.Data.Linq;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;
using System.Web.UI.WebControls; 


using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace SWA
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IService1" in both code and config file together.
    [ServiceContract]
    public interface IService1
    {

        [OperationContract]
        string GetData(int value);

        // [OperationContract]
        // string AddTwoNumbers(int val1, int val2); 

        [OperationContract]
        CompositeType GetDataUsingDataContract(CompositeType composite);

        [OperationContract]
        //Added for handling REST 
        [WebGet(BodyStyle = WebMessageBodyStyle.Bare, ResponseFormat = WebMessageFormat.Xml,
        UriTemplate = "/Add?num1={val1}&num2={val2}")]
        string AddTwoNumbers(int val1, int val2);

        //[WebGet(UriTemplate = "/")] 
        //[OperationContract] string GetDateTime();

        [OperationContract]
        //Added for handling REST
        [WebGet(BodyStyle = WebMessageBodyStyle.Bare,
           ResponseFormat = WebMessageFormat.Xml,
           UriTemplate = "/dice")]
        string dice();

        [OperationContract]
        //Added for handling REST
        [WebGet(BodyStyle = WebMessageBodyStyle.Bare,
           ResponseFormat = WebMessageFormat.Xml,
           UriTemplate = "/pie")]
        string pie();

        // TODO: Add your service operations here

        [WebGet(UriTemplate = "/Create?first_name={custFirstName}&last_name={custLastName}&email={custEmail}&uPassword={custPassword}",
            ResponseFormat = WebMessageFormat.Json)]
        [OperationContract]
        string Create(string custFirstName, string custLastName, string custEmail, string custPassword);

        //[WebGet(UriTemplate = "/Update?client_id={custID}&first_name={custFirstName}&last_name={custLastName}&email={custEmail}&uPassword={custPassword}",
        //     ResponseFormat = WebMessageFormat.Json)]
        //[OperationContract]
        //bool UpdateCustomer(int custID, string custFirstName, string custLastName, string custEmail, string custPassword);

        //[WebGet(UriTemplate = "/Read?client_id={custID}",
        //    ResponseFormat = WebMessageFormat.Json)]
        //[OperationContract]
        //tblSignUp ReadCustomer(int custID);

        //[WebGet(UriTemplate = "/Delete?client_id={custID}",
        //    ResponseFormat = WebMessageFormat.Json)]
        //[OperationContract]
        //bool DeleteCustomer(int custID);

        //[WebGet(UriTemplate = "/ReadAll",
        //    ResponseFormat = WebMessageFormat.Json)]
        //[OperationContract]
        //tblSignUp[] ReadCustomerList();




    }


    // Use a data contract as illustrated in the sample below to add composite types to service operations.
    [DataContract]
    public class CompositeType
    {
        bool boolValue = true;
        string stringValue = "Hello ";

        [DataMember]
        public bool BoolValue
        {
            get { return boolValue; }
            set { boolValue = value; }
        }

        [DataMember]
        public string StringValue
        {
            get { return stringValue; }
            set { stringValue = value; }
        }
    }
}
