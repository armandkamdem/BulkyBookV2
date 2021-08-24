using MailKit.Net.Smtp;
using Microsoft.AspNetCore.Identity.UI.Services;
using Microsoft.Extensions.Options;
using MimeKit;
using SendGrid;
using SendGrid.Helpers.Mail;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace BulkyBookV2.Utility
{
    //Kokaar--
    public class EmailSender : IEmailSender
    {
        enum EmailProviderEnum
        {
            NETCoreMailKit,
            SendGrid
        }
        private readonly EmailOptions emailOptions;

        public EmailSender(IOptions<EmailOptions> options)
        {
            emailOptions = options.Value;
        }
        public Task SendEmailAsync(string email, string subject, string htmlMessage)
        {
            if(string.IsNullOrWhiteSpace(emailOptions.EmailProvider) &&
                emailOptions.EmailProvider == EmailProviderEnum.SendGrid.ToString())
                return Execute(emailOptions.SendGridKey, subject, htmlMessage, email);

            var message = CreateEmailMessage(email, subject, htmlMessage);
            return Execute(message);           
        }
        private Task Execute(string sendGridKEy, string subject,string message, string email)
        {
            var client = new SendGridClient(sendGridKEy);
            var from = new EmailAddress("armand.kamdem.dev@gmail.com", "Bulky Books");
            var to = new EmailAddress(email, "End User");
            var msg = MailHelper.CreateSingleEmail(from, to, subject, "", message);
            return client.SendEmailAsync(msg);
        }

        private MimeMessage CreateEmailMessage(string email, string subject, string htmlMessage)
        {
            var to = new List<MailboxAddress>
            {
                new MailboxAddress(email)
            };
            var emailMessage = new MimeMessage();
            emailMessage.From.Add(new MailboxAddress(emailOptions.Sender));
            emailMessage.To.AddRange(to);
            emailMessage.Subject = subject;
            emailMessage.Body = new TextPart(MimeKit.Text.TextFormat.Html) { Text = htmlMessage };

            return emailMessage;
        }

        private async Task Execute(MimeMessage mailMessage)
        {
            using (var client = new SmtpClient())
            {
                try
                {
                    await client.ConnectAsync(emailOptions.SmtpServer, emailOptions.Port.GetValueOrDefault(), true);
                    client.AuthenticationMechanisms.Remove("XOAUTH2");
                    await client.AuthenticateAsync(emailOptions.UserName, emailOptions.Password);

                    await client.SendAsync(mailMessage);
                }
                catch (Exception)
                {
                    throw new();
                }
                finally
                {
                    await client.DisconnectAsync(true);
                    client.Dispose();
                }
            }
        }
    }
}
