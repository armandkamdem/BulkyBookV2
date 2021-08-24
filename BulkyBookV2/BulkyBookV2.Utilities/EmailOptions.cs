using System;
using System.Collections.Generic;
using System.Text;

namespace BulkyBookV2.Utility
{
    //Kokaar--
    public class EmailOptions
    {
        public const string ConfigSectionName = "EmailSettings";

        public string EmailProvider { get; set; }
        public string SendGridKey { get; set; }
        public string SendGridUser { get; set; }
        public string Sender { get; set; }
        public string SmtpServer { get; set; }
        public int? Port { get; set; }
        public string UserName { get; set; }
        public string Password { get; set; }
    }
}
