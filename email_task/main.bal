import ballerina/log;


import wso2/choreo.sendemail as ChoreoEmail;

public function main() returns error? {
 check sendEmail();
}

function sendEmail() returns error? {
string finalContent = string `
Dear Vehicle Market User,

This is a reminder to check the portal for newly published vehicles.

Kindly reach out to us if you need further help.

Warm regards,
The Vehicle market Team

---
Privacy Policy | Terms of Use | Unsubscribe
This message is intended only for the addressee and may contain confidential information. If you are not the intended recipient, you are hereby notified that any use, dissemination, copying, or storage of this message or its attachments is strictly prohibited.
`;

    ChoreoEmail:Client emailClient = check new ();
    string sendEmailResponse = check emailClient->sendEmail("pasinduonline@gmail.com", "Vehicle Market Reminder", finalContent);
    log:printInfo("Email sent successfully with response: " + sendEmailResponse);
}
