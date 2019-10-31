HELP/INFORMATION
===============================

This program was developed with Visual Foxpro 9 SP1 and it is used to test SMTP server communication. This program was writen for "techies" to troubleshoot email client/server interaction. For more information on SMTP, please visit the links listed at the bottom of this document.

Before you connect you must configure the program by going to the Settings tab. If you wish to send a message, enter message data in the Message tab. If you wish to send other commands than the ones listed on the Session tab, press Shift+F11 to display the command text box. The program supports AUTH PLAIN authentication, but if you need AUTH LOGIN use the command text box to enter the command and the base64 encoded username and password from the Settings tab. 

You can use "connect", "exit", and "license" commands from the commandbox as well.

Use the Lorem button on the Message tab to read text from the lorem.txt file and place it in the body of the test email message.

The program uses an INI file located in the program directory to store its settings. It is not required for the program to function, but it is used to save the settings so the user does not have to enter them every time the program loads.

(The program lacks the ability to engage in secure TLS communication. This would be a great enhancement and a great opportunity to learn. If you know how to do this, please contact deciacco.com.)


deciacco.com
contact@deciacco.com


THANKS
===================

Thanks to all the wonderful people in the Foxpro community that took a few minutes out of their day to answer questions.

LINKS
===================

http://en.wikipedia.org/wiki/Simple_Mail_Transfer_Protocol

http://www.technoids.org/saslmech.html#appA

http://www.yuki-onna.co.uk/email/smtp.html

http://qmail.jms1.net/test-auth.shtml

http://support.microsoft.com/?kbid=315124

OTHER
===================
Microsoft and Visual FoxPro are either registered trademarks or trademarks of Microsoft Corporation in the United States and/or other countries.

This program and deciacco.com are not affiliated with or endorsed by Microsoft in any way.
