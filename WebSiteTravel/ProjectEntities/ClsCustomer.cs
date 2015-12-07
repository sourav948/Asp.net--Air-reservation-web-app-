using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ProjectEntities
{
    public class ClsCustomer
    {
        int custid;
        string firstname;
        string lastname;
        string emailid;
        string password;
        int age;
        string address;
        int countryid;
        int stateid;
        string city;
        int pincode;
        string mobileno;
        string gender;
        string securityques;
        string answer;
        string role;



        public ClsCustomer(string firstname, string lastname, string emailid, string password, int age, string address, int countryid, int stateid,
                            string city, int pincode, string mobileno, string gender, string securityques, string answer, string role)
        {
            this.firstname = firstname;
            this.lastname = lastname;
            this.emailid = emailid;
            this.password = password;
            this.age = age;
            this.address = address;
            this.countryid = countryid;
            this.stateid = stateid;
            this.city = city;
            this.pincode = pincode;
            this.mobileno = mobileno;
            this.gender = gender;
            this.securityques = securityques;
            this.answer = answer;
            this.role = role;

        }


        public int CustomerId
        {
            get
            {
                return custid;
            }
        }

        public string FirstName
        {
            get
            {
                return firstname;
            }

            set
            {
                firstname = value;
            }

        }

        public string LastName
        {
            get
            {
                return lastname;
            }

            set
            {
                lastname = value;
            }
        }

        public string EmailId
        {
            get
            {
                return emailid;
            }

            set
            {
                emailid = value;

            }
        }

        public string Password
        {
            get
            {
                return password;
            }

            set
            {
                password = value;

            }

        }

        public int Age
        {
            get
            {
                return age;
            }

            set
            {
                age = value;
            }
        }

        public string Address
        {
            get
            {
                return address;
            }

            set
            {
                address = value;
            }

        }

        public int CountryId
        {
            get
            {
                return countryid;
            }

            set
            {
                countryid = value;
            }

        }

        public int StateId
        {
            get
            {
                return stateid;
            }

            set
            {
                stateid = value;
            }

         }

         public string City
         {
            get
            {
                return city;
            }

            set
            {
                city = value;

            }

          }

         public int PinCode
         {
            get
            {
                return pincode;
            }

            set
            {
                pincode = value;

            }

          }

         public string MobileNo
         {
            get
            {
                return mobileno;
            }

            set
            {
                mobileno = value;

            }

         }

         public string Gender
         {
            get
            {
                return gender;
            }

            set
            {
                gender = value;

            }

         }

         public string SecurityQuestions
         {
            get
            {
                return securityques;
            }

            set
            {
                securityques = value;

            }

         }

         public string Answer
         {
            get
            {
                return answer;
            }

            set
            {
                answer = value;

            }

         }

         public string Role
         {
            get
            {
                return role;
            }

            set
            {
                role = value;

            }

         }

    }
}

 


    

