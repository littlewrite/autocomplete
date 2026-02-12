// Auto-generated from TypeScript source: appwrite.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `index` CLI
final FigSpec indexSpec = FigSpec(
  name: 'index',
  description: 'Appwrite - Open-Source End-to-End Backend Server',
  subcommands: [
    Subcommand(
      name: 'login',
      description: 'The login command allows you to authenticate and manage a user account'
    ),
    Subcommand(
      name: 'init',
      description: 'The init command helps you initialize your Appwrite project, functions and collections',
      subcommands: [
        Subcommand(
          name: 'project',
          description: 'Initialise your Appwrite project'
        ),
        Subcommand(
          name: 'function',
          description: 'Initialise your Appwrite cloud function'
        ),
        Subcommand(
          name: 'collection',
          description: 'Initialise your Appwrite collections',
          options: [
            Option(
              name: '--databaseId',
              description: 'Database ID',
              args: [
                Arg(
                name: 'databaseI'
              )
              ]
            ),
            Option(
              name: '--all',
              description: 'Flag to initialize all databases'
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'deploy',
      description: 'The deploy command provides a convenient wrapper for deploying your functions and collections',
      subcommands: [
        Subcommand(
          name: 'function',
          description: 'Deploy functions in the current directory',
          options: [
            Option(
              name: '--functionId',
              description: 'Function ID',
              args: [
                Arg(
                name: 'functionI'
              )
              ]
            ),
            Option(
              name: '--all',
              description: 'Flag to deploy all functions'
            )
          ]
        ),
        Subcommand(
          name: 'collection',
          description: 'Deploy collections in the current project',
          options: [
            Option(
              name: '--all',
              description: 'Flag to deploy all functions'
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'logout',
      description: 'The logout command allows you to logout of your Appwrite account'
    ),
    Subcommand(
      name: 'account',
      description: 'The account command allows you to authenticate and manage a user account',
      subcommands: [
        Subcommand(
          name: 'get',
          description: 'Get currently logged in user data as JSON object'
        ),
        Subcommand(
          name: 'create',
          description: 'Use this endpoint to allow a new user to register a new account in your project. After the user registration completes successfully, you can use the [/account/verfication](/docs/client/account#accountCreateVerification) route to start verifying the user email address. To allow the new user to login to their new account, you need to create a new [account session](/docs/client/account#accountCreateSession)',
          options: [
            Option(
              name: '--userId',
              description: 'Unique Id. Choose your own unique ID or pass the string "unique()" to auto generate it. Valid chars are a-z, A-Z, 0-9, period, hyphen, and underscore. Can\'t start with a special char. Max length is 36 chars',
              args: [
                Arg(
                name: 'userI'
              )
              ]
            ),
            Option(
              name: '--email',
              description: 'User email',
              args: [
                Arg(
                name: 'emai'
              )
              ]
            ),
            Option(
              name: '--password',
              description: 'User password. Must be at least 8 chars',
              args: [
                Arg(
                name: 'passwor'
              )
              ]
            ),
            Option(
              name: '--name',
              description: 'User name. Max length: 128 chars',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'updateEmail',
          description: 'Update currently logged in user account email address. After changing user address, the user confirmation status will get reset. A new confirmation email is not sent automatically however you can use the send confirmation email endpoint again to send the confirmation email. For security measures, user password is required to complete this request. This endpoint can also be used to convert an anonymous account to a normal one, by passing an email address and a new password',
          options: [
            Option(
              name: '--email',
              description: 'User email',
              args: [
                Arg(
                name: 'emai'
              )
              ]
            ),
            Option(
              name: '--password',
              description: 'User password. Must be at least 8 chars',
              args: [
                Arg(
                name: 'passwor'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'createJWT',
          description: 'Use this endpoint to create a JSON Web Token. You can use the resulting JWT to authenticate on behalf of the current user when working with the Appwrite server-side API and SDKs. The JWT secret is valid for 15 minutes from its creation and will be invalid if the user will logout in that time frame'
        ),
        Subcommand(
          name: 'getLogs',
          description: 'Get currently logged in user list of latest security activity logs. Each log returns user IP address, location and date and time of log',
          options: [
            Option(
              name: '--limit',
              description: 'Maximum number of logs to return in response. By default will return maximum 25 results. Maximum of 100 results allowed per request',
              args: [
                Arg(
                name: 'limi'
              )
              ]
            ),
            Option(
              name: '--offset',
              description: 'Offset value. The default value is 0. Use this value to manage pagination. [learn more about pagination](https://appwrite.io/docs/pagination)',
              args: [
                Arg(
                name: 'offse'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'updateName',
          description: 'Update currently logged in user account name',
          options: [
            Option(
              name: '--name',
              description: 'User name. Max length: 128 chars',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'updatePassword',
          description: 'Update currently logged in user password. For validation, user is required to pass in the new password, and the old password. For users created with OAuth, Team Invites and Magic URL, oldPassword is optional',
          options: [
            Option(
              name: '--password',
              description: 'New user password. Must be at least 8 chars',
              args: [
                Arg(
                name: 'passwor'
              )
              ]
            ),
            Option(
              name: '--oldPassword',
              description: 'Current user password. Must be at least 8 chars',
              args: [
                Arg(
                name: 'oldPasswor'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'updatePhone',
          description: 'Update the currently logged in user\'s phone number. After updating the phone number, the phone verification status will be reset. A confirmation SMS is not sent automatically, however you can use the [POST /account/verification/phone](/docs/client/account#accountCreatePhoneVerification) endpoint to send a confirmation SMS',
          options: [
            Option(
              name: '--number',
              description: 'Phone number. Format this number with a leading \'+\' and a country code, e.g., +16175551212',
              args: [
                Arg(
                name: 'numbe'
              )
              ]
            ),
            Option(
              name: '--password',
              description: 'User password. Must be at least 8 chars',
              args: [
                Arg(
                name: 'passwor'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'getPrefs',
          description: 'Get currently logged in user preferences as a key-value object'
        ),
        Subcommand(
          name: 'updatePrefs',
          description: 'Update currently logged in user account preferences. The object you pass is stored as is, and replaces any previous value. The maximum allowed prefs size is 64kB and throws error if exceeded',
          options: [
            Option(
              name: '--prefs',
              description: 'Prefs key-value JSON object',
              args: [
                Arg(
                name: 'pref'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'createRecovery',
          description: 'Sends the user an email with a temporary secret key for password reset. When the user clicks the confirmation link he is redirected back to your app password reset URL with the secret key and email address values attached to the URL query string. Use the query string params to submit a request to the [PUT /account/recovery](/docs/client/account#accountUpdateRecovery) endpoint to complete the process. The verification link sent to the user\'s email address is valid for 1 hour',
          options: [
            Option(
              name: '--email',
              description: 'User email',
              args: [
                Arg(
                name: 'emai'
              )
              ]
            ),
            Option(
              name: '--url',
              description: 'URL to redirect the user back to your app from the recovery email. Only URLs from hostnames in your project platform list are allowed. This requirement helps to prevent an [open redirect](https://cheatsheetseries.owasp.org/cheatsheets/Unvalidated_Redirects_and_Forwards_Cheat_Sheet.html) attack against your project API',
              args: [
                Arg(
                name: 'ur'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'updateRecovery',
          description: 'Use this endpoint to complete the user account password reset. Both the **userId** and **secret** arguments will be passed as query parameters to the redirect URL you have provided when sending your request to the [POST /account/recovery](/docs/client/account#accountCreateRecovery) endpoint.  Please note that in order to avoid a [Redirect Attack](https://github.com/OWASP/CheatSheetSeries/blob/master/cheatsheets/Unvalidated_Redirects_and_Forwards_Cheat_Sheet.md) the only valid redirect URLs are the ones from domains you have set when adding your platforms in the console interface',
          options: [
            Option(
              name: '--userId',
              description: 'User ID',
              args: [
                Arg(
                name: 'userI'
              )
              ]
            ),
            Option(
              name: '--secret',
              description: 'Valid reset token',
              args: [
                Arg(
                name: 'secre'
              )
              ]
            ),
            Option(
              name: '--password',
              description: 'New user password. Must be at least 8 chars',
              args: [
                Arg(
                name: 'passwor'
              )
              ]
            ),
            Option(
              name: '--passwordAgain',
              description: 'Repeat new user password. Must be at least 8 chars',
              args: [
                Arg(
                name: 'passwordAgai'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'getSessions',
          description: 'Get currently logged in user list of active sessions across different devices'
        ),
        Subcommand(
          name: 'deleteSessions',
          description: 'Delete all sessions from the user account and remove any sessions cookies from the end client'
        ),
        Subcommand(
          name: 'createAnonymousSession',
          description: 'Use this endpoint to allow a new user to register an anonymous account in your project. This route will also create a new session for the user. To allow the new user to convert an anonymous account to a normal account, you need to update its [email and password](/docs/client/account#accountUpdateEmail) or create an [OAuth2 session](/docs/client/account#accountCreateOAuth2Session)'
        ),
        Subcommand(
          name: 'createEmailSession',
          description: 'Allow the user to login into their account by providing a valid email and password combination. This route will create a new session for the user',
          options: [
            Option(
              name: '--email',
              description: 'User email',
              args: [
                Arg(
                name: 'emai'
              )
              ]
            ),
            Option(
              name: '--password',
              description: 'User password. Must be at least 8 chars',
              args: [
                Arg(
                name: 'passwor'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'createMagicURLSession',
          description: 'Sends the user an email with a secret key for creating a session. When the user clicks the link in the email, the user is redirected back to the URL you provided with the secret key and userId values attached to the URL query string. Use the query string parameters to submit a request to the [PUT /account/sessions/magic-url](/docs/client/account#accountUpdateMagicURLSession) endpoint to complete the login process. The link sent to the user\'s email address is valid for 1 hour. If you are on a mobile device you can leave the URL parameter empty, so that the login completion will be handled by your Appwrite instance by default',
          options: [
            Option(
              name: '--userId',
              description: 'Unique Id. Choose your own unique ID or pass the string "unique()" to auto generate it. Valid chars are a-z, A-Z, 0-9, period, hyphen, and underscore. Can\'t start with a special char. Max length is 36 chars',
              args: [
                Arg(
                name: 'userI'
              )
              ]
            ),
            Option(
              name: '--email',
              description: 'User email',
              args: [
                Arg(
                name: 'emai'
              )
              ]
            ),
            Option(
              name: '--url',
              description: 'URL to redirect the user back to your app from the magic URL login. Only URLs from hostnames in your project platform list are allowed. This requirement helps to prevent an [open redirect](https://cheatsheetseries.owasp.org/cheatsheets/Unvalidated_Redirects_and_Forwards_Cheat_Sheet.html) attack against your project API',
              args: [
                Arg(
                name: 'ur'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'updateMagicURLSession',
          description: 'Use this endpoint to complete creating the session with the Magic URL. Both the **userId** and **secret** arguments will be passed as query parameters to the redirect URL you have provided when sending your request to the [POST /account/sessions/magic-url](/docs/client/account#accountCreateMagicURLSession) endpoint.  Please note that in order to avoid a [Redirect Attack](https://github.com/OWASP/CheatSheetSeries/blob/master/cheatsheets/Unvalidated_Redirects_and_Forwards_Cheat_Sheet.md) the only valid redirect URLs are the ones from domains you have set when adding your platforms in the console interface',
          options: [
            Option(
              name: '--userId',
              description: 'User ID',
              args: [
                Arg(
                name: 'userI'
              )
              ]
            ),
            Option(
              name: '--secret',
              description: 'Valid verification token',
              args: [
                Arg(
                name: 'secre'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'createOAuth2Session',
          description: 'Allow the user to login to their account using the OAuth2 provider of their choice. Each OAuth2 provider should be enabled from the Appwrite console first. Use the success and failure arguments to provide a redirect URL\'s back to your app when login is completed.  If there is already an active session, the new session will be attached to the logged-in account. If there are no active sessions, the server will attempt to look for a user with the same email address as the email received from the OAuth2 provider and attach the new session to the existing user. If no matching user is found - the server will create a new user',
          options: [
            Option(
              name: '--provider',
              description: 'OAuth2 Provider. Currently, supported providers are: amazon, apple, auth0, autodesk, bitbucket, bitly, box, dailymotion, discord, dropbox, facebook, github, gitlab, google, linkedin, microsoft, notion, okta, paypal, paypalSandbox, salesforce, slack, spotify, stripe, tradeshift, tradeshiftBox, twitch, wordpress, yahoo, yammer, yandex, zoom',
              args: [
                Arg(
                name: 'provide'
              )
              ]
            ),
            Option(
              name: '--success',
              description: 'URL to redirect back to your app after a successful login attempt.  Only URLs from hostnames in your project platform list are allowed. This requirement helps to prevent an [open redirect](https://cheatsheetseries.owasp.org/cheatsheets/Unvalidated_Redirects_and_Forwards_Cheat_Sheet.html) attack against your project API',
              args: [
                Arg(
                name: 'succes'
              )
              ]
            ),
            Option(
              name: '--failure',
              description: 'URL to redirect back to your app after a failed login attempt.  Only URLs from hostnames in your project platform list are allowed. This requirement helps to prevent an [open redirect](https://cheatsheetseries.owasp.org/cheatsheets/Unvalidated_Redirects_and_Forwards_Cheat_Sheet.html) attack against your project API',
              args: [
                Arg(
                name: 'failur'
              )
              ]
            ),
            Option(
              name: '--scopes',
              description: 'A list of custom OAuth2 scopes. Check each provider internal docs for a list of supported scopes. Maximum of 100 scopes are allowed, each 4096 characters long',
              args: [
                Arg(
                name: 'scopes'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'createPhoneSession',
          description: 'Sends the user an SMS with a secret key for creating a session. Use the returned user ID and secret and submit a request to the [PUT /account/sessions/phone](/docs/client/account#accountUpdatePhoneSession) endpoint to complete the login process. The secret sent to the user\'s phone is valid for 15 minutes',
          options: [
            Option(
              name: '--userId',
              description: 'Unique Id. Choose your own unique ID or pass the string "unique()" to auto generate it. Valid chars are a-z, A-Z, 0-9, period, hyphen, and underscore. Can\'t start with a special char. Max length is 36 chars',
              args: [
                Arg(
                name: 'userI'
              )
              ]
            ),
            Option(
              name: '--number',
              description: 'Phone number. Format this number with a leading \'+\' and a country code, e.g., +16175551212',
              args: [
                Arg(
                name: 'numbe'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'updatePhoneSession',
          description: 'Use this endpoint to complete creating a session with SMS. Use the **userId** from the [createPhoneSession](/docs/client/account#accountCreatePhoneSession) endpoint and the **secret** received via SMS to successfully update and confirm the phone session',
          options: [
            Option(
              name: '--userId',
              description: 'User ID',
              args: [
                Arg(
                name: 'userI'
              )
              ]
            ),
            Option(
              name: '--secret',
              description: 'Valid verification token',
              args: [
                Arg(
                name: 'secre'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'getSession',
          description: 'Use this endpoint to get a logged in user\'s session using a Session ID. Inputting \'current\' will return the current session being used',
          options: [
            Option(
              name: '--sessionId',
              description: 'Session ID. Use the string \'current\' to get the current device session',
              args: [
                Arg(
                name: 'sessionI'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'updateSession',
          description: 'Access tokens have limited lifespan and expire to mitigate security risks. If session was created using an OAuth provider, this route can be used to "refresh" the access token',
          options: [
            Option(
              name: '--sessionId',
              description: 'Session ID. Use the string \'current\' to update the current device session',
              args: [
                Arg(
                name: 'sessionI'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'deleteSession',
          description: 'Use this endpoint to log out the currently logged in user from all their account sessions across all of their different devices. When using the Session ID argument, only the unique session ID provided is deleted',
          options: [
            Option(
              name: '--sessionId',
              description: 'Session ID. Use the string \'current\' to delete the current device session',
              args: [
                Arg(
                name: 'sessionI'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'updateStatus',
          description: 'Block the currently logged in user account. Behind the scene, the user record is not deleted but permanently blocked from any access. To completely delete a user, use the Users API instead'
        ),
        Subcommand(
          name: 'createVerification',
          description: 'Use this endpoint to send a verification message to your user email address to confirm they are the valid owners of that address. Both the **userId** and **secret** arguments will be passed as query parameters to the URL you have provided to be attached to the verification email. The provided URL should redirect the user back to your app and allow you to complete the verification process by verifying both the **userId** and **secret** parameters. Learn more about how to [complete the verification process](/docs/client/account#accountUpdateEmailVerification). The verification link sent to the user\'s email address is valid for 7 days.  Please note that in order to avoid a [Redirect Attack](https://github.com/OWASP/CheatSheetSeries/blob/master/cheatsheets/Unvalidated_Redirects_and_Forwards_Cheat_Sheet.md), the only valid redirect URLs are the ones from domains you have set when adding your platforms in the console interface',
          options: [
            Option(
              name: '--url',
              description: 'URL to redirect the user back to your app from the verification email. Only URLs from hostnames in your project platform list are allowed. This requirement helps to prevent an [open redirect](https://cheatsheetseries.owasp.org/cheatsheets/Unvalidated_Redirects_and_Forwards_Cheat_Sheet.html) attack against your project API',
              args: [
                Arg(
                name: 'ur'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'updateVerification',
          description: 'Use this endpoint to complete the user email verification process. Use both the **userId** and **secret** parameters that were attached to your app URL to verify the user email ownership. If confirmed this route will return a 200 status code',
          options: [
            Option(
              name: '--userId',
              description: 'User ID',
              args: [
                Arg(
                name: 'userI'
              )
              ]
            ),
            Option(
              name: '--secret',
              description: 'Valid verification token',
              args: [
                Arg(
                name: 'secre'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'createPhoneVerification',
          description: 'Use this endpoint to send a verification SMS to the currently logged in user. This endpoint is meant for use after updating a user\'s phone number using the [accountUpdatePhone](/docs/client/account#accountUpdatePhone) endpoint. Learn more about how to [complete the verification process](/docs/client/account#accountUpdatePhoneVerification). The verification code sent to the user\'s phone number is valid for 15 minutes'
        ),
        Subcommand(
          name: 'updatePhoneVerification',
          description: 'Use this endpoint to complete the user phone verification process. Use the **userId** and **secret** that were sent to your user\'s phone number to verify the user email ownership. If confirmed this route will return a 200 status code',
          options: [
            Option(
              name: '--secret',
              description: 'Valid verification token',
              args: [
                Arg(
                name: 'secre'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'avatars',
      description: 'The avatars command aims to help you complete everyday tasks related to your app image, icons, and avatars',
      subcommands: [
        Subcommand(
          name: 'getBrowser',
          description: 'You can use this endpoint to show different browser icons to your users. The code argument receives the browser code as it appears in your user [GET /account/sessions](/docs/client/account#accountGetSessions) endpoint. Use width, height and quality arguments to change the output settings.  When one dimension is specified and the other is 0, the image is scaled with preserved aspect ratio. If both dimensions are 0, the API provides an image at source quality. If dimensions are not specified, the default size of image returned is 100x100px',
          options: [
            Option(
              name: '--code',
              description: 'Browser Code',
              args: [
                Arg(
                name: 'cod'
              )
              ]
            ),
            Option(
              name: '--width',
              description: 'Image width. Pass an integer between 0 to 2000. Defaults to 100',
              args: [
                Arg(
                name: 'widt'
              )
              ]
            ),
            Option(
              name: '--height',
              description: 'Image height. Pass an integer between 0 to 2000. Defaults to 100',
              args: [
                Arg(
                name: 'heigh'
              )
              ]
            ),
            Option(
              name: '--quality',
              description: 'Image quality. Pass an integer between 0 to 100. Defaults to 100',
              args: [
                Arg(
                name: 'qualit'
              )
              ]
            ),
            Option(
              name: '--destination',
              description: 'Output file path',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'getCreditCard',
          description: 'The credit card endpoint will return you the icon of the credit card provider you need. Use width, height and quality arguments to change the output settings.  When one dimension is specified and the other is 0, the image is scaled with preserved aspect ratio. If both dimensions are 0, the API provides an image at source quality. If dimensions are not specified, the default size of image returned is 100x100px',
          options: [
            Option(
              name: '--code',
              description: 'Credit Card Code. Possible values: amex, argencard, cabal, censosud, diners, discover, elo, hipercard, jcb, mastercard, naranja, targeta-shopping, union-china-pay, visa, mir, maestro',
              args: [
                Arg(
                name: 'cod'
              )
              ]
            ),
            Option(
              name: '--width',
              description: 'Image width. Pass an integer between 0 to 2000. Defaults to 100',
              args: [
                Arg(
                name: 'widt'
              )
              ]
            ),
            Option(
              name: '--height',
              description: 'Image height. Pass an integer between 0 to 2000. Defaults to 100',
              args: [
                Arg(
                name: 'heigh'
              )
              ]
            ),
            Option(
              name: '--quality',
              description: 'Image quality. Pass an integer between 0 to 100. Defaults to 100',
              args: [
                Arg(
                name: 'qualit'
              )
              ]
            ),
            Option(
              name: '--destination',
              description: 'Output file path',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'getFavicon',
          description: 'Use this endpoint to fetch the favorite icon (AKA favicon) of any remote website URL',
          options: [
            Option(
              name: '--url',
              description: 'Website URL which you want to fetch the favicon from',
              args: [
                Arg(
                name: 'ur'
              )
              ]
            ),
            Option(
              name: '--destination',
              description: 'Output file path',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'getFlag',
          description: 'You can use this endpoint to show different country flags icons to your users. The code argument receives the 2 letter country code. Use width, height and quality arguments to change the output settings.  When one dimension is specified and the other is 0, the image is scaled with preserved aspect ratio. If both dimensions are 0, the API provides an image at source quality. If dimensions are not specified, the default size of image returned is 100x100px',
          options: [
            Option(
              name: '--code',
              description: 'Country Code. ISO Alpha-2 country code format',
              args: [
                Arg(
                name: 'cod'
              )
              ]
            ),
            Option(
              name: '--width',
              description: 'Image width. Pass an integer between 0 to 2000. Defaults to 100',
              args: [
                Arg(
                name: 'widt'
              )
              ]
            ),
            Option(
              name: '--height',
              description: 'Image height. Pass an integer between 0 to 2000. Defaults to 100',
              args: [
                Arg(
                name: 'heigh'
              )
              ]
            ),
            Option(
              name: '--quality',
              description: 'Image quality. Pass an integer between 0 to 100. Defaults to 100',
              args: [
                Arg(
                name: 'qualit'
              )
              ]
            ),
            Option(
              name: '--destination',
              description: 'Output file path',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'getImage',
          description: 'Use this endpoint to fetch a remote image URL and crop it to any image size you want. This endpoint is very useful if you need to crop and display remote images in your app or in case you want to make sure a 3rd party image is properly served using a TLS protocol.  When one dimension is specified and the other is 0, the image is scaled with preserved aspect ratio. If both dimensions are 0, the API provides an image at source quality. If dimensions are not specified, the default size of image returned is 400x400px',
          options: [
            Option(
              name: '--url',
              description: 'Image URL which you want to crop',
              args: [
                Arg(
                name: 'ur'
              )
              ]
            ),
            Option(
              name: '--width',
              description: 'Resize preview image width, Pass an integer between 0 to 2000. Defaults to 400',
              args: [
                Arg(
                name: 'widt'
              )
              ]
            ),
            Option(
              name: '--height',
              description: 'Resize preview image height, Pass an integer between 0 to 2000. Defaults to 400',
              args: [
                Arg(
                name: 'heigh'
              )
              ]
            ),
            Option(
              name: '--destination',
              description: 'Output file path',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'getInitials',
          description: 'Use this endpoint to show your user initials avatar icon on your website or app. By default, this route will try to print your logged-in user name or email initials. You can also overwrite the user name if you pass the \'name\' parameter. If no name is given and no user is logged, an empty avatar will be returned.  You can use the color and background params to change the avatar colors. By default, a random theme will be selected. The random theme will persist for the user\'s initials when reloading the same theme will always return for the same initials.  When one dimension is specified and the other is 0, the image is scaled with preserved aspect ratio. If both dimensions are 0, the API provides an image at source quality. If dimensions are not specified, the default size of image returned is 100x100px',
          options: [
            Option(
              name: '--name',
              description: 'Full Name. When empty, current user name or email will be used. Max length: 128 chars',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--width',
              description: 'Image width. Pass an integer between 0 to 2000. Defaults to 100',
              args: [
                Arg(
                name: 'widt'
              )
              ]
            ),
            Option(
              name: '--height',
              description: 'Image height. Pass an integer between 0 to 2000. Defaults to 100',
              args: [
                Arg(
                name: 'heigh'
              )
              ]
            ),
            Option(
              name: '--color',
              description: 'Changes text color. By default a random color will be picked and stay will persistent to the given name',
              args: [
                Arg(
                name: 'colo'
              )
              ]
            ),
            Option(
              name: '--background',
              description: 'Changes background color. By default a random color will be picked and stay will persistent to the given name',
              args: [
                Arg(
                name: 'backgroun'
              )
              ]
            ),
            Option(
              name: '--destination',
              description: 'Output file path',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'getQR',
          description: 'Converts a given plain text to a QR code image. You can use the query parameters to change the size and style of the resulting image',
          options: [
            Option(
              name: '--text',
              description: 'Plain text to be converted to QR code image',
              args: [
                Arg(
                name: 'tex'
              )
              ]
            ),
            Option(
              name: '--size',
              description: 'QR code size. Pass an integer between 1 to 1000. Defaults to 400',
              args: [
                Arg(
                name: 'siz'
              )
              ]
            ),
            Option(
              name: '--margin',
              description: 'Margin from edge. Pass an integer between 0 to 10. Defaults to 1',
              args: [
                Arg(
                name: 'margi'
              )
              ]
            ),
            Option(
              name: '--download',
              description: 'Return resulting image with \'Content-Disposition: attachment \' headers for the browser to start downloading it. Pass 0 for no header, or 1 for otherwise. Default value is set to 0',
              args: [
                Arg(
                name: 'downloa'
              )
              ]
            ),
            Option(
              name: '--destination',
              description: 'Output file path',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'databases',
      description: 'The databases command allows you to create structured collections of documents, query and filter lists of documents',
      subcommands: [
        Subcommand(
          name: 'list',
          options: [
            Option(
              name: '--search',
              description: 'Search term to filter your list results. Max length: 256 chars',
              args: [
                Arg(
                name: 'searc'
              )
              ]
            ),
            Option(
              name: '--limit',
              description: 'Maximum number of collection to return in response. By default will return maximum 25 results. Maximum of 100 results allowed per request',
              args: [
                Arg(
                name: 'limi'
              )
              ]
            ),
            Option(
              name: '--offset',
              description: 'Offset value. The default value is 0. Use this param to manage pagination. [learn more about pagination](https://appwrite.io/docs/pagination)',
              args: [
                Arg(
                name: 'offse'
              )
              ]
            ),
            Option(
              name: '--cursor',
              description: 'ID of the collection used as the starting point for the query, excluding the collection itself. Should be used for efficient pagination when working with large sets of data',
              args: [
                Arg(
                name: 'curso'
              )
              ]
            ),
            Option(
              name: '--cursorDirection',
              description: 'Direction of the cursor, can be either \'before\' or \'after\'',
              args: [
                Arg(
                name: 'cursorDirectio'
              )
              ]
            ),
            Option(
              name: '--orderType',
              description: 'Order result by ASC or DESC order',
              args: [
                Arg(
                name: 'orderTyp'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'create',
          options: [
            Option(
              name: '--databaseId',
              description: 'Unique Id. Choose your own unique ID or pass the string "unique()" to auto generate it. Valid chars are a-z, A-Z, 0-9, period, hyphen, and underscore. Can\'t start with a special char. Max length is 36 chars',
              args: [
                Arg(
                name: 'databaseI'
              )
              ]
            ),
            Option(
              name: '--name',
              description: 'Collection name. Max length: 128 chars',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'getUsage',
          options: [
            Option(
              name: '--range',
              description: '\'Date range',
              args: [
                Arg(
                name: 'rang'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'get',
          options: [
            Option(
              name: '--databaseId',
              description: 'Database ID',
              args: [
                Arg(
                name: 'databaseI'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          options: [
            Option(
              name: '--databaseId',
              description: 'Database ID',
              args: [
                Arg(
                name: 'databaseI'
              )
              ]
            ),
            Option(
              name: '--name',
              description: 'Collection name. Max length: 128 chars',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          options: [
            Option(
              name: '--databaseId',
              description: 'Database ID',
              args: [
                Arg(
                name: 'databaseI'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'listCollections',
          options: [
            Option(
              name: '--databaseId',
              description: 'Database ID',
              args: [
                Arg(
                name: 'databaseI'
              )
              ]
            ),
            Option(
              name: '--search',
              description: 'Search term to filter your list results. Max length: 256 chars',
              args: [
                Arg(
                name: 'searc'
              )
              ]
            ),
            Option(
              name: '--limit',
              description: 'Maximum number of collection to return in response. By default will return maximum 25 results. Maximum of 100 results allowed per request',
              args: [
                Arg(
                name: 'limi'
              )
              ]
            ),
            Option(
              name: '--offset',
              description: 'Offset value. The default value is 0. Use this param to manage pagination. [learn more about pagination](https://appwrite.io/docs/pagination)',
              args: [
                Arg(
                name: 'offse'
              )
              ]
            ),
            Option(
              name: '--cursor',
              description: 'ID of the collection used as the starting point for the query, excluding the collection itself. Should be used for efficient pagination when working with large sets of data',
              args: [
                Arg(
                name: 'curso'
              )
              ]
            ),
            Option(
              name: '--cursorDirection',
              description: 'Direction of the cursor, can be either \'before\' or \'after\'',
              args: [
                Arg(
                name: 'cursorDirectio'
              )
              ]
            ),
            Option(
              name: '--orderType',
              description: 'Order result by ASC or DESC order',
              args: [
                Arg(
                name: 'orderTyp'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'createCollection',
          options: [
            Option(
              name: '--databaseId',
              description: 'Database ID',
              args: [
                Arg(
                name: 'databaseI'
              )
              ]
            ),
            Option(
              name: '--collectionId',
              description: 'Unique Id. Choose your own unique ID or pass the string "unique()" to auto generate it. Valid chars are a-z, A-Z, 0-9, period, hyphen, and underscore. Can\'t start with a special char. Max length is 36 chars',
              args: [
                Arg(
                name: 'collectionI'
              )
              ]
            ),
            Option(
              name: '--name',
              description: 'Collection name. Max length: 128 chars',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--permission',
              description: 'Specifies the permissions model used in this collection, which accepts either \'collection\' or \'document\'. For \'collection\' level permission, the permissions specified in read and write params are applied to all documents in the collection. For \'document\' level permissions, read and write permissions are specified in each document. [learn more about permissions](https://appwrite.io/docs/permissions) and get a full list of available permissions',
              args: [
                Arg(
                name: 'permissio'
              )
              ]
            ),
            Option(
              name: '--read',
              description: 'An array of strings with read permissions. By default no user is granted with any read permissions. [learn more about permissions](https://appwrite.io/docs/permissions) and get a full list of available permissions',
              args: [
                Arg(
                name: 'read'
              )
              ]
            ),
            Option(
              name: '--write',
              description: 'An array of strings with write permissions. By default no user is granted with any write permissions. [learn more about permissions](https://appwrite.io/docs/permissions) and get a full list of available permissions',
              args: [
                Arg(
                name: 'write'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'getCollection',
          options: [
            Option(
              name: '--databaseId',
              description: 'Database ID',
              args: [
                Arg(
                name: 'databaseI'
              )
              ]
            ),
            Option(
              name: '--collectionId',
              description: 'Collection ID',
              args: [
                Arg(
                name: 'collectionI'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'updateCollection',
          options: [
            Option(
              name: '--databaseId',
              description: 'Database ID',
              args: [
                Arg(
                name: 'databaseI'
              )
              ]
            ),
            Option(
              name: '--collectionId',
              description: 'Collection ID',
              args: [
                Arg(
                name: 'collectionI'
              )
              ]
            ),
            Option(
              name: '--name',
              description: 'Collection name. Max length: 128 chars',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--permission',
              description: 'Permissions type model to use for reading documents in this collection. You can use collection-level permission set once on the collection using the \'read\' and \'write\' params, or you can set document-level permission where each document read and write params will decide who has access to read and write to each document individually. [learn more about permissions](https://appwrite.io/docs/permissions) and get a full list of available permissions',
              args: [
                Arg(
                name: 'permissio'
              )
              ]
            ),
            Option(
              name: '--read',
              description: 'An array of strings with read permissions. By default inherits the existing read permissions. [learn more about permissions](https://appwrite.io/docs/permissions) and get a full list of available permissions',
              args: [
                Arg(
                name: 'read'
              )
              ]
            ),
            Option(
              name: '--write',
              description: 'An array of strings with write permissions. By default inherits the existing write permissions. [learn more about permissions](https://appwrite.io/docs/permissions) and get a full list of available permissions',
              args: [
                Arg(
                name: 'write'
              )
              ]
            ),
            Option(
              name: '--enabled',
              description: 'Is collection enabled?',
              args: [
                Arg(
                name: 'enable'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'deleteCollection',
          options: [
            Option(
              name: '--databaseId',
              description: 'Database ID',
              args: [
                Arg(
                name: 'databaseI'
              )
              ]
            ),
            Option(
              name: '--collectionId',
              description: 'Collection ID',
              args: [
                Arg(
                name: 'collectionI'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'listAttributes',
          options: [
            Option(
              name: '--databaseId',
              description: 'Database ID',
              args: [
                Arg(
                name: 'databaseI'
              )
              ]
            ),
            Option(
              name: '--collectionId',
              description: 'Collection ID. You can create a new collection using the Database service [server integration](https://appwrite.io/docs/server/database#createCollection)',
              args: [
                Arg(
                name: 'collectionI'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'createBooleanAttribute',
          options: [
            Option(
              name: '--databaseId',
              description: 'Database ID',
              args: [
                Arg(
                name: 'databaseI'
              )
              ]
            ),
            Option(
              name: '--collectionId',
              description: 'Collection ID. You can create a new collection using the Database service [server integration](https://appwrite.io/docs/server/database#createCollection)',
              args: [
                Arg(
                name: 'collectionI'
              )
              ]
            ),
            Option(
              name: '--key',
              description: 'Attribute Key',
              args: [
                Arg(
                name: 'ke'
              )
              ]
            ),
            Option(
              name: '--required',
              description: 'Is attribute required?',
              args: [
                Arg(
                name: 'require'
              )
              ]
            ),
            Option(
              name: '--xdefault',
              description: 'Default value for attribute when not provided. Cannot be set when attribute is required',
              args: [
                Arg(
                name: 'xdefaul'
              )
              ]
            ),
            Option(
              name: '--array',
              description: 'Is attribute an array?',
              args: [
                Arg(
                name: 'arra'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'createEmailAttribute',
          options: [
            Option(
              name: '--databaseId',
              description: 'Database ID',
              args: [
                Arg(
                name: 'databaseI'
              )
              ]
            ),
            Option(
              name: '--collectionId',
              description: 'Collection ID. You can create a new collection using the Database service [server integration](https://appwrite.io/docs/server/database#createCollection)',
              args: [
                Arg(
                name: 'collectionI'
              )
              ]
            ),
            Option(
              name: '--key',
              description: 'Attribute Key',
              args: [
                Arg(
                name: 'ke'
              )
              ]
            ),
            Option(
              name: '--required',
              description: 'Is attribute required?',
              args: [
                Arg(
                name: 'require'
              )
              ]
            ),
            Option(
              name: '--xdefault',
              description: 'Default value for attribute when not provided. Cannot be set when attribute is required',
              args: [
                Arg(
                name: 'xdefaul'
              )
              ]
            ),
            Option(
              name: '--array',
              description: 'Is attribute an array?',
              args: [
                Arg(
                name: 'arra'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'createEnumAttribute',
          options: [
            Option(
              name: '--databaseId',
              description: 'Database ID',
              args: [
                Arg(
                name: 'databaseI'
              )
              ]
            ),
            Option(
              name: '--collectionId',
              description: 'Collection ID. You can create a new collection using the Database service [server integration](https://appwrite.io/docs/server/database#createCollection)',
              args: [
                Arg(
                name: 'collectionI'
              )
              ]
            ),
            Option(
              name: '--key',
              description: 'Attribute Key',
              args: [
                Arg(
                name: 'ke'
              )
              ]
            ),
            Option(
              name: '--elements',
              description: 'Array of elements in enumerated type. Uses length of longest element to determine size. Maximum of 100 elements are allowed, each 4096 characters long',
              args: [
                Arg(
                name: 'elements'
              )
              ]
            ),
            Option(
              name: '--required',
              description: 'Is attribute required?',
              args: [
                Arg(
                name: 'require'
              )
              ]
            ),
            Option(
              name: '--xdefault',
              description: 'Default value for attribute when not provided. Cannot be set when attribute is required',
              args: [
                Arg(
                name: 'xdefaul'
              )
              ]
            ),
            Option(
              name: '--array',
              description: 'Is attribute an array?',
              args: [
                Arg(
                name: 'arra'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'createFloatAttribute',
          options: [
            Option(
              name: '--databaseId',
              description: 'Database ID',
              args: [
                Arg(
                name: 'databaseI'
              )
              ]
            ),
            Option(
              name: '--collectionId',
              description: 'Collection ID. You can create a new collection using the Database service [server integration](https://appwrite.io/docs/server/database#createCollection)',
              args: [
                Arg(
                name: 'collectionI'
              )
              ]
            ),
            Option(
              name: '--key',
              description: 'Attribute Key',
              args: [
                Arg(
                name: 'ke'
              )
              ]
            ),
            Option(
              name: '--required',
              description: 'Is attribute required?',
              args: [
                Arg(
                name: 'require'
              )
              ]
            ),
            Option(
              name: '--min',
              description: 'Minimum value to enforce on new documents',
              args: [
                Arg(
                name: 'mi'
              )
              ]
            ),
            Option(
              name: '--max',
              description: 'Maximum value to enforce on new documents',
              args: [
                Arg(
                name: 'ma'
              )
              ]
            ),
            Option(
              name: '--xdefault',
              description: 'Default value for attribute when not provided. Cannot be set when attribute is required',
              args: [
                Arg(
                name: 'xdefaul'
              )
              ]
            ),
            Option(
              name: '--array',
              description: 'Is attribute an array?',
              args: [
                Arg(
                name: 'arra'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'createIntegerAttribute',
          options: [
            Option(
              name: '--databaseId',
              description: 'Database ID',
              args: [
                Arg(
                name: 'databaseI'
              )
              ]
            ),
            Option(
              name: '--collectionId',
              description: 'Collection ID. You can create a new collection using the Database service [server integration](https://appwrite.io/docs/server/database#createCollection)',
              args: [
                Arg(
                name: 'collectionI'
              )
              ]
            ),
            Option(
              name: '--key',
              description: 'Attribute Key',
              args: [
                Arg(
                name: 'ke'
              )
              ]
            ),
            Option(
              name: '--required',
              description: 'Is attribute required?',
              args: [
                Arg(
                name: 'require'
              )
              ]
            ),
            Option(
              name: '--min',
              description: 'Minimum value to enforce on new documents',
              args: [
                Arg(
                name: 'mi'
              )
              ]
            ),
            Option(
              name: '--max',
              description: 'Maximum value to enforce on new documents',
              args: [
                Arg(
                name: 'ma'
              )
              ]
            ),
            Option(
              name: '--xdefault',
              description: 'Default value for attribute when not provided. Cannot be set when attribute is required',
              args: [
                Arg(
                name: 'xdefaul'
              )
              ]
            ),
            Option(
              name: '--array',
              description: 'Is attribute an array?',
              args: [
                Arg(
                name: 'arra'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'createIpAttribute',
          options: [
            Option(
              name: '--databaseId',
              description: 'Database ID',
              args: [
                Arg(
                name: 'databaseI'
              )
              ]
            ),
            Option(
              name: '--collectionId',
              description: 'Collection ID. You can create a new collection using the Database service [server integration](https://appwrite.io/docs/server/database#createCollection)',
              args: [
                Arg(
                name: 'collectionI'
              )
              ]
            ),
            Option(
              name: '--key',
              description: 'Attribute Key',
              args: [
                Arg(
                name: 'ke'
              )
              ]
            ),
            Option(
              name: '--required',
              description: 'Is attribute required?',
              args: [
                Arg(
                name: 'require'
              )
              ]
            ),
            Option(
              name: '--xdefault',
              description: 'Default value for attribute when not provided. Cannot be set when attribute is required',
              args: [
                Arg(
                name: 'xdefaul'
              )
              ]
            ),
            Option(
              name: '--array',
              description: 'Is attribute an array?',
              args: [
                Arg(
                name: 'arra'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'createStringAttribute',
          options: [
            Option(
              name: '--databaseId',
              description: 'Database ID',
              args: [
                Arg(
                name: 'databaseI'
              )
              ]
            ),
            Option(
              name: '--collectionId',
              description: 'Collection ID. You can create a new collection using the Database service [server integration](https://appwrite.io/docs/server/database#createCollection)',
              args: [
                Arg(
                name: 'collectionI'
              )
              ]
            ),
            Option(
              name: '--key',
              description: 'Attribute Key',
              args: [
                Arg(
                name: 'ke'
              )
              ]
            ),
            Option(
              name: '--size',
              description: 'Attribute size for text attributes, in number of characters',
              args: [
                Arg(
                name: 'siz'
              )
              ]
            ),
            Option(
              name: '--required',
              description: 'Is attribute required?',
              args: [
                Arg(
                name: 'require'
              )
              ]
            ),
            Option(
              name: '--xdefault',
              description: 'Default value for attribute when not provided. Cannot be set when attribute is required',
              args: [
                Arg(
                name: 'xdefaul'
              )
              ]
            ),
            Option(
              name: '--array',
              description: 'Is attribute an array?',
              args: [
                Arg(
                name: 'arra'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'createUrlAttribute',
          options: [
            Option(
              name: '--databaseId',
              description: 'Database ID',
              args: [
                Arg(
                name: 'databaseI'
              )
              ]
            ),
            Option(
              name: '--collectionId',
              description: 'Collection ID. You can create a new collection using the Database service [server integration](https://appwrite.io/docs/server/database#createCollection)',
              args: [
                Arg(
                name: 'collectionI'
              )
              ]
            ),
            Option(
              name: '--key',
              description: 'Attribute Key',
              args: [
                Arg(
                name: 'ke'
              )
              ]
            ),
            Option(
              name: '--required',
              description: 'Is attribute required?',
              args: [
                Arg(
                name: 'require'
              )
              ]
            ),
            Option(
              name: '--xdefault',
              description: 'Default value for attribute when not provided. Cannot be set when attribute is required',
              args: [
                Arg(
                name: 'xdefaul'
              )
              ]
            ),
            Option(
              name: '--array',
              description: 'Is attribute an array?',
              args: [
                Arg(
                name: 'arra'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'getAttribute',
          options: [
            Option(
              name: '--databaseId',
              description: 'Database ID',
              args: [
                Arg(
                name: 'databaseI'
              )
              ]
            ),
            Option(
              name: '--collectionId',
              description: 'Collection ID. You can create a new collection using the Database service [server integration](https://appwrite.io/docs/server/database#createCollection)',
              args: [
                Arg(
                name: 'collectionI'
              )
              ]
            ),
            Option(
              name: '--key',
              description: 'Attribute Key',
              args: [
                Arg(
                name: 'ke'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'deleteAttribute',
          options: [
            Option(
              name: '--databaseId',
              description: 'Database ID',
              args: [
                Arg(
                name: 'databaseI'
              )
              ]
            ),
            Option(
              name: '--collectionId',
              description: 'Collection ID. You can create a new collection using the Database service [server integration](https://appwrite.io/docs/server/database#createCollection)',
              args: [
                Arg(
                name: 'collectionI'
              )
              ]
            ),
            Option(
              name: '--key',
              description: 'Attribute Key',
              args: [
                Arg(
                name: 'ke'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'listDocuments',
          options: [
            Option(
              name: '--databaseId',
              description: 'Database ID',
              args: [
                Arg(
                name: 'databaseI'
              )
              ]
            ),
            Option(
              name: '--collectionId',
              description: 'Collection ID. You can create a new collection using the Database service [server integration](https://appwrite.io/docs/server/database#createCollection)',
              args: [
                Arg(
                name: 'collectionI'
              )
              ]
            ),
            Option(
              name: '--queries',
              description: 'Array of query strings generated using the Query class provided by the SDK. [Learn more about queries](https://appwrite.io/docs/database#querying-documents). Maximum of 100 queries are allowed, each 4096 characters long',
              args: [
                Arg(
                name: 'queries'
              )
              ]
            ),
            Option(
              name: '--limit',
              description: 'Maximum number of documents to return in response. By default will return maximum 25 results. Maximum of 100 results allowed per request',
              args: [
                Arg(
                name: 'limi'
              )
              ]
            ),
            Option(
              name: '--offset',
              description: 'Offset value. The default value is 0. Use this value to manage pagination. [learn more about pagination](https://appwrite.io/docs/pagination)',
              args: [
                Arg(
                name: 'offse'
              )
              ]
            ),
            Option(
              name: '--cursor',
              description: 'ID of the document used as the starting point for the query, excluding the document itself. Should be used for efficient pagination when working with large sets of data. [learn more about pagination](https://appwrite.io/docs/pagination)',
              args: [
                Arg(
                name: 'curso'
              )
              ]
            ),
            Option(
              name: '--cursorDirection',
              description: 'Direction of the cursor, can be either \'before\' or \'after\'',
              args: [
                Arg(
                name: 'cursorDirectio'
              )
              ]
            ),
            Option(
              name: '--orderAttributes',
              description: 'Array of attributes used to sort results. Maximum of 100 order attributes are allowed, each 4096 characters long',
              args: [
                Arg(
                name: 'orderAttributes'
              )
              ]
            ),
            Option(
              name: '--orderTypes',
              description: 'Array of order directions for sorting attribtues. Possible values are DESC for descending order, or ASC for ascending order. Maximum of 100 order types are allowed',
              args: [
                Arg(
                name: 'orderTypes'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'createDocument',
          options: [
            Option(
              name: '--databaseId',
              description: 'Database ID',
              args: [
                Arg(
                name: 'databaseI'
              )
              ]
            ),
            Option(
              name: '--collectionId',
              description: 'Collection ID. You can create a new collection using the Database service [server integration](https://appwrite.io/docs/server/database#createCollection). Make sure to define attributes before creating documents',
              args: [
                Arg(
                name: 'collectionI'
              )
              ]
            ),
            Option(
              name: '--documentId',
              description: 'Document ID. Choose your own unique ID or pass the string "unique()" to auto generate it. Valid chars are a-z, A-Z, 0-9, period, hyphen, and underscore. Can\'t start with a special char. Max length is 36 chars',
              args: [
                Arg(
                name: 'documentI'
              )
              ]
            ),
            Option(
              name: '--data',
              description: 'Document data as JSON object',
              args: [
                Arg(
                name: 'dat'
              )
              ]
            ),
            Option(
              name: '--read',
              description: 'An array of strings with read permissions. By default only the current user is granted with read permissions. [learn more about permissions](https://appwrite.io/docs/permissions) and get a full list of available permissions',
              args: [
                Arg(
                name: 'read'
              )
              ]
            ),
            Option(
              name: '--write',
              description: 'An array of strings with write permissions. By default only the current user is granted with write permissions. [learn more about permissions](https://appwrite.io/docs/permissions) and get a full list of available permissions',
              args: [
                Arg(
                name: 'write'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'getDocument',
          options: [
            Option(
              name: '--databaseId',
              description: 'Database ID',
              args: [
                Arg(
                name: 'databaseI'
              )
              ]
            ),
            Option(
              name: '--collectionId',
              description: 'Collection ID. You can create a new collection using the Database service [server integration](https://appwrite.io/docs/server/database#createCollection)',
              args: [
                Arg(
                name: 'collectionI'
              )
              ]
            ),
            Option(
              name: '--documentId',
              description: 'Document ID',
              args: [
                Arg(
                name: 'documentI'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'updateDocument',
          options: [
            Option(
              name: '--databaseId',
              description: 'Database ID',
              args: [
                Arg(
                name: 'databaseI'
              )
              ]
            ),
            Option(
              name: '--collectionId',
              description: 'Collection ID',
              args: [
                Arg(
                name: 'collectionI'
              )
              ]
            ),
            Option(
              name: '--documentId',
              description: 'Document ID',
              args: [
                Arg(
                name: 'documentI'
              )
              ]
            ),
            Option(
              name: '--data',
              description: 'Document data as JSON object. Include only attribute and value pairs to be updated',
              args: [
                Arg(
                name: 'dat'
              )
              ]
            ),
            Option(
              name: '--read',
              description: 'An array of strings with read permissions. By default inherits the existing read permissions. [learn more about permissions](https://appwrite.io/docs/permissions) and get a full list of available permissions',
              args: [
                Arg(
                name: 'read'
              )
              ]
            ),
            Option(
              name: '--write',
              description: 'An array of strings with write permissions. By default inherits the existing write permissions. [learn more about permissions](https://appwrite.io/docs/permissions) and get a full list of available permissions',
              args: [
                Arg(
                name: 'write'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'deleteDocument',
          options: [
            Option(
              name: '--databaseId',
              description: 'Database ID',
              args: [
                Arg(
                name: 'databaseI'
              )
              ]
            ),
            Option(
              name: '--collectionId',
              description: 'Collection ID. You can create a new collection using the Database service [server integration](https://appwrite.io/docs/server/database#createCollection)',
              args: [
                Arg(
                name: 'collectionI'
              )
              ]
            ),
            Option(
              name: '--documentId',
              description: 'Document ID',
              args: [
                Arg(
                name: 'documentI'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'listDocumentLogs',
          options: [
            Option(
              name: '--databaseId',
              description: 'Database ID',
              args: [
                Arg(
                name: 'databaseI'
              )
              ]
            ),
            Option(
              name: '--collectionId',
              description: 'Collection ID',
              args: [
                Arg(
                name: 'collectionI'
              )
              ]
            ),
            Option(
              name: '--documentId',
              description: 'Document ID',
              args: [
                Arg(
                name: 'documentI'
              )
              ]
            ),
            Option(
              name: '--limit',
              description: 'Maximum number of logs to return in response. By default will return maximum 25 results. Maximum of 100 results allowed per request',
              args: [
                Arg(
                name: 'limi'
              )
              ]
            ),
            Option(
              name: '--offset',
              description: 'Offset value. The default value is 0. Use this value to manage pagination. [learn more about pagination](https://appwrite.io/docs/pagination)',
              args: [
                Arg(
                name: 'offse'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'listIndexes',
          options: [
            Option(
              name: '--databaseId',
              description: 'Database ID',
              args: [
                Arg(
                name: 'databaseI'
              )
              ]
            ),
            Option(
              name: '--collectionId',
              description: 'Collection ID. You can create a new collection using the Database service [server integration](https://appwrite.io/docs/server/database#createCollection)',
              args: [
                Arg(
                name: 'collectionI'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'createIndex',
          options: [
            Option(
              name: '--databaseId',
              description: 'Database ID',
              args: [
                Arg(
                name: 'databaseI'
              )
              ]
            ),
            Option(
              name: '--collectionId',
              description: 'Collection ID. You can create a new collection using the Database service [server integration](https://appwrite.io/docs/server/database#createCollection)',
              args: [
                Arg(
                name: 'collectionI'
              )
              ]
            ),
            Option(
              name: '--key',
              description: 'Index Key',
              args: [
                Arg(
                name: 'ke'
              )
              ]
            ),
            Option(
              name: '--type',
              description: 'Index type',
              args: [
                Arg(
                name: 'typ'
              )
              ]
            ),
            Option(
              name: '--attributes',
              description: 'Array of attributes to index. Maximum of 100 attributes are allowed, each 32 characters long',
              args: [
                Arg(
                name: 'attributes'
              )
              ]
            ),
            Option(
              name: '--orders',
              description: 'Array of index orders. Maximum of 100 orders are allowed',
              args: [
                Arg(
                name: 'orders'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'getIndex',
          options: [
            Option(
              name: '--databaseId',
              description: 'Database ID',
              args: [
                Arg(
                name: 'databaseI'
              )
              ]
            ),
            Option(
              name: '--collectionId',
              description: 'Collection ID. You can create a new collection using the Database service [server integration](https://appwrite.io/docs/server/database#createCollection)',
              args: [
                Arg(
                name: 'collectionI'
              )
              ]
            ),
            Option(
              name: '--key',
              description: 'Index Key',
              args: [
                Arg(
                name: 'ke'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'deleteIndex',
          options: [
            Option(
              name: '--databaseId',
              description: 'Database ID',
              args: [
                Arg(
                name: 'databaseI'
              )
              ]
            ),
            Option(
              name: '--collectionId',
              description: 'Collection ID. You can create a new collection using the Database service [server integration](https://appwrite.io/docs/server/database#createCollection)',
              args: [
                Arg(
                name: 'collectionI'
              )
              ]
            ),
            Option(
              name: '--key',
              description: 'Index Key',
              args: [
                Arg(
                name: 'ke'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'listCollectionLogs',
          options: [
            Option(
              name: '--databaseId',
              description: 'Database ID',
              args: [
                Arg(
                name: 'databaseI'
              )
              ]
            ),
            Option(
              name: '--collectionId',
              description: 'Collection ID',
              args: [
                Arg(
                name: 'collectionI'
              )
              ]
            ),
            Option(
              name: '--limit',
              description: 'Maximum number of logs to return in response. By default will return maximum 25 results. Maximum of 100 results allowed per request',
              args: [
                Arg(
                name: 'limi'
              )
              ]
            ),
            Option(
              name: '--offset',
              description: 'Offset value. The default value is 0. Use this value to manage pagination. [learn more about pagination](https://appwrite.io/docs/pagination)',
              args: [
                Arg(
                name: 'offse'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'getCollectionUsage',
          options: [
            Option(
              name: '--databaseId',
              description: 'Database ID',
              args: [
                Arg(
                name: 'databaseI'
              )
              ]
            ),
            Option(
              name: '--collectionId',
              description: 'Collection ID',
              args: [
                Arg(
                name: 'collectionI'
              )
              ]
            ),
            Option(
              name: '--range',
              description: 'Date range',
              args: [
                Arg(
                name: 'rang'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'listLogs',
          options: [
            Option(
              name: '--databaseId',
              description: 'Database ID',
              args: [
                Arg(
                name: 'databaseI'
              )
              ]
            ),
            Option(
              name: '--limit',
              description: 'Maximum number of logs to return in response. By default will return maximum 25 results. Maximum of 100 results allowed per request',
              args: [
                Arg(
                name: 'limi'
              )
              ]
            ),
            Option(
              name: '--offset',
              description: 'Offset value. The default value is 0. Use this value to manage pagination. [learn more about pagination](https://appwrite.io/docs/pagination)',
              args: [
                Arg(
                name: 'offse'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'getDatabaseUsage',
          options: [
            Option(
              name: '--databaseId',
              description: 'Database ID',
              args: [
                Arg(
                name: 'databaseI'
              )
              ]
            ),
            Option(
              name: '--range',
              description: '\'Date range',
              args: [
                Arg(
                name: 'rang'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'functions',
      description: 'The functions command allows you view, create and manage your Cloud Functions',
      subcommands: [
        Subcommand(
          name: 'list',
          description: 'Get a list of all the project\'s functions. You can use the query params to filter your results',
          options: [
            Option(
              name: '--search',
              description: 'Search term to filter your list results. Max length: 256 chars',
              args: [
                Arg(
                name: 'searc'
              )
              ]
            ),
            Option(
              name: '--limit',
              description: 'Maximum number of functions to return in response. By default will return maximum 25 results. Maximum of 100 results allowed per request',
              args: [
                Arg(
                name: 'limi'
              )
              ]
            ),
            Option(
              name: '--offset',
              description: 'Offset value. The default value is 0. Use this value to manage pagination. [learn more about pagination](https://appwrite.io/docs/pagination)',
              args: [
                Arg(
                name: 'offse'
              )
              ]
            ),
            Option(
              name: '--cursor',
              description: 'ID of the function used as the starting point for the query, excluding the function itself. Should be used for efficient pagination when working with large sets of data. [learn more about pagination](https://appwrite.io/docs/pagination)',
              args: [
                Arg(
                name: 'curso'
              )
              ]
            ),
            Option(
              name: '--cursorDirection',
              description: 'Direction of the cursor, can be either \'before\' or \'after\'',
              args: [
                Arg(
                name: 'cursorDirectio'
              )
              ]
            ),
            Option(
              name: '--orderType',
              description: 'Order result by ASC or DESC order',
              args: [
                Arg(
                name: 'orderTyp'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'create',
          description: 'Create a new function. You can pass a list of [permissions](/docs/permissions) to allow different project users or team with access to execute the function using the client API',
          options: [
            Option(
              name: '--functionId',
              description: 'Function ID. Choose your own unique ID or pass the string "unique()" to auto generate it. Valid chars are a-z, A-Z, 0-9, period, hyphen, and underscore. Can\'t start with a special char. Max length is 36 chars',
              args: [
                Arg(
                name: 'functionI'
              )
              ]
            ),
            Option(
              name: '--name',
              description: 'Function name. Max length: 128 chars',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--execute',
              description: 'An array of strings with execution permissions. By default no user is granted with any execute permissions. [learn more about permissions](https://appwrite.io/docs/permissions) and get a full list of available permissions. Maximum of 100 scopes are allowed, each 64 characters long',
              args: [
                Arg(
                name: 'execute'
              )
              ]
            ),
            Option(
              name: '--runtime',
              description: 'Execution runtime',
              args: [
                Arg(
                name: 'runtim'
              )
              ]
            ),
            Option(
              name: '--vars',
              description: 'Key-value JSON object that will be passed to the function as environment variables',
              args: [
                Arg(
                name: 'var'
              )
              ]
            ),
            Option(
              name: '--events',
              description: 'Events list. Maximum of 100 events are allowed',
              args: [
                Arg(
                name: 'events'
              )
              ]
            ),
            Option(
              name: '--schedule',
              description: 'Schedule CRON syntax',
              args: [
                Arg(
                name: 'schedul'
              )
              ]
            ),
            Option(
              name: '--timeout',
              description: 'Function maximum execution time in seconds',
              args: [
                Arg(
                name: 'timeou'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'listRuntimes',
          description: 'Get a list of all runtimes that are currently active on your instance'
        ),
        Subcommand(
          name: 'get',
          description: 'Get a function by its unique ID',
          options: [
            Option(
              name: '--functionId',
              description: 'Function ID',
              args: [
                Arg(
                name: 'functionI'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update function by its unique ID',
          options: [
            Option(
              name: '--functionId',
              description: 'Function ID',
              args: [
                Arg(
                name: 'functionI'
              )
              ]
            ),
            Option(
              name: '--name',
              description: 'Function name. Max length: 128 chars',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--execute',
              description: 'An array of strings with execution permissions. By default no user is granted with any execute permissions. [learn more about permissions](https://appwrite.io/docs/permissions) and get a full list of available permissions. Maximum of 100 scopes are allowed, each 64 characters long',
              args: [
                Arg(
                name: 'execute'
              )
              ]
            ),
            Option(
              name: '--vars',
              description: 'Key-value JSON object that will be passed to the function as environment variables',
              args: [
                Arg(
                name: 'var'
              )
              ]
            ),
            Option(
              name: '--events',
              description: 'Events list. Maximum of 100 events are allowed',
              args: [
                Arg(
                name: 'events'
              )
              ]
            ),
            Option(
              name: '--schedule',
              description: 'Schedule CRON syntax',
              args: [
                Arg(
                name: 'schedul'
              )
              ]
            ),
            Option(
              name: '--timeout',
              description: 'Maximum execution time in seconds',
              args: [
                Arg(
                name: 'timeou'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a function by its unique ID',
          options: [
            Option(
              name: '--functionId',
              description: 'Function ID',
              args: [
                Arg(
                name: 'functionI'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'listDeployments',
          description: 'Get a list of all the project\'s code deployments. You can use the query params to filter your results',
          options: [
            Option(
              name: '--functionId',
              description: 'Function ID',
              args: [
                Arg(
                name: 'functionI'
              )
              ]
            ),
            Option(
              name: '--search',
              description: 'Search term to filter your list results. Max length: 256 chars',
              args: [
                Arg(
                name: 'searc'
              )
              ]
            ),
            Option(
              name: '--limit',
              description: 'Maximum number of deployments to return in response. By default will return maximum 25 results. Maximum of 100 results allowed per request',
              args: [
                Arg(
                name: 'limi'
              )
              ]
            ),
            Option(
              name: '--offset',
              description: 'Offset value. The default value is 0. Use this value to manage pagination. [learn more about pagination](https://appwrite.io/docs/pagination)',
              args: [
                Arg(
                name: 'offse'
              )
              ]
            ),
            Option(
              name: '--cursor',
              description: 'ID of the deployment used as the starting point for the query, excluding the deployment itself. Should be used for efficient pagination when working with large sets of data. [learn more about pagination](https://appwrite.io/docs/pagination)',
              args: [
                Arg(
                name: 'curso'
              )
              ]
            ),
            Option(
              name: '--cursorDirection',
              description: 'Direction of the cursor, can be either \'before\' or \'after\'',
              args: [
                Arg(
                name: 'cursorDirectio'
              )
              ]
            ),
            Option(
              name: '--orderType',
              description: 'Order result by ASC or DESC order',
              args: [
                Arg(
                name: 'orderTyp'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'createDeployment',
          description: 'Create a new function code deployment. Use this endpoint to upload a new version of your code function. To execute your newly uploaded code, you\'ll need to update the function\'s deployment to use your new deployment UID.  This endpoint accepts a tar.gz file compressed with your code. Make sure to include any dependencies your code has within the compressed file. You can learn more about code packaging in the [Appwrite Cloud Functions tutorial](/docs/functions).  Use the "command" param to set the entry point used to execute your code',
          options: [
            Option(
              name: '--functionId',
              description: 'Function ID',
              args: [
                Arg(
                name: 'functionI'
              )
              ]
            ),
            Option(
              name: '--entrypoint',
              description: 'Entrypoint File',
              args: [
                Arg(
                name: 'entrypoin'
              )
              ]
            ),
            Option(
              name: '--code',
              description: 'Gzip file with your code package. When used with the Appwrite CLI, pass the path to your code directory, and the CLI will automatically package your code. Use a path that is within the current directory',
              args: [
                Arg(
                name: 'cod'
              )
              ]
            ),
            Option(
              name: '--activate',
              description: 'Automatically activate the deployment when it is finished building',
              args: [
                Arg(
                name: 'activat'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'getDeployment',
          description: 'Get a code deployment by its unique ID',
          options: [
            Option(
              name: '--functionId',
              description: 'Function ID',
              args: [
                Arg(
                name: 'functionI'
              )
              ]
            ),
            Option(
              name: '--deploymentId',
              description: 'Deployment ID',
              args: [
                Arg(
                name: 'deploymentI'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'updateDeployment',
          description: 'Update the function code deployment ID using the unique function ID. Use this endpoint to switch the code deployment that should be executed by the execution endpoint',
          options: [
            Option(
              name: '--functionId',
              description: 'Function ID',
              args: [
                Arg(
                name: 'functionI'
              )
              ]
            ),
            Option(
              name: '--deploymentId',
              description: 'Deployment ID',
              args: [
                Arg(
                name: 'deploymentI'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'deleteDeployment',
          description: 'Delete a code deployment by its unique ID',
          options: [
            Option(
              name: '--functionId',
              description: 'Function ID',
              args: [
                Arg(
                name: 'functionI'
              )
              ]
            ),
            Option(
              name: '--deploymentId',
              description: 'Deployment ID',
              args: [
                Arg(
                name: 'deploymentI'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'retryBuild',
          options: [
            Option(
              name: '--functionId',
              description: 'Function ID',
              args: [
                Arg(
                name: 'functionI'
              )
              ]
            ),
            Option(
              name: '--deploymentId',
              description: 'Deployment ID',
              args: [
                Arg(
                name: 'deploymentI'
              )
              ]
            ),
            Option(
              name: '--buildId',
              description: 'Build unique ID',
              args: [
                Arg(
                name: 'buildI'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'listExecutions',
          description: 'Get a list of all the current user function execution logs. You can use the query params to filter your results. On admin mode, this endpoint will return a list of all of the project\'s executions. [Learn more about different API modes](/docs/admin)',
          options: [
            Option(
              name: '--functionId',
              description: 'Function ID',
              args: [
                Arg(
                name: 'functionI'
              )
              ]
            ),
            Option(
              name: '--limit',
              description: 'Maximum number of executions to return in response. By default will return maximum 25 results. Maximum of 100 results allowed per request',
              args: [
                Arg(
                name: 'limi'
              )
              ]
            ),
            Option(
              name: '--offset',
              description: 'Offset value. The default value is 0. Use this value to manage pagination. [learn more about pagination](https://appwrite.io/docs/pagination)',
              args: [
                Arg(
                name: 'offse'
              )
              ]
            ),
            Option(
              name: '--search',
              description: 'Search term to filter your list results. Max length: 256 chars',
              args: [
                Arg(
                name: 'searc'
              )
              ]
            ),
            Option(
              name: '--cursor',
              description: 'ID of the execution used as the starting point for the query, excluding the execution itself. Should be used for efficient pagination when working with large sets of data. [learn more about pagination](https://appwrite.io/docs/pagination)',
              args: [
                Arg(
                name: 'curso'
              )
              ]
            ),
            Option(
              name: '--cursorDirection',
              description: 'Direction of the cursor, can be either \'before\' or \'after\'',
              args: [
                Arg(
                name: 'cursorDirectio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'createExecution',
          description: 'Trigger a function execution. The returned object will return you the current execution status. You can ping the \'Get Execution\' endpoint to get updates on the current execution status. Once this endpoint is called, your function execution process will start asynchronously',
          options: [
            Option(
              name: '--functionId',
              description: 'Function ID',
              args: [
                Arg(
                name: 'functionI'
              )
              ]
            ),
            Option(
              name: '--data',
              description: 'String of custom data to send to function',
              args: [
                Arg(
                name: 'dat'
              )
              ]
            ),
            Option(
              name: '--async',
              description: 'Execute code asynchronously. Default value is true',
              args: [
                Arg(
                name: 'asyn'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'getExecution',
          description: 'Get a function execution log by its unique ID',
          options: [
            Option(
              name: '--functionId',
              description: 'Function ID',
              args: [
                Arg(
                name: 'functionI'
              )
              ]
            ),
            Option(
              name: '--executionId',
              description: 'Execution ID',
              args: [
                Arg(
                name: 'executionI'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'getUsage',
          options: [
            Option(
              name: '--functionId',
              description: 'Function ID',
              args: [
                Arg(
                name: 'functionI'
              )
              ]
            ),
            Option(
              name: '--range',
              description: 'Date range',
              args: [
                Arg(
                name: 'rang'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'health',
      description: 'The health command allows you to both validate and monitor your Appwrite server\'s health',
      subcommands: [
        Subcommand(
          name: 'get',
          description: 'Check the Appwrite HTTP server is up and responsive'
        ),
        Subcommand(
          name: 'getAntivirus',
          description: 'Check the Appwrite Antivirus server is up and connection is successful'
        ),
        Subcommand(
          name: 'getCache',
          description: 'Check the Appwrite in-memory cache server is up and connection is successful'
        ),
        Subcommand(
          name: 'getDB',
          description: 'Check the Appwrite database server is up and connection is successful'
        ),
        Subcommand(
          name: 'getQueueCertificates',
          description: 'Get the number of certificates that are waiting to be issued against [Letsencrypt](https://letsencrypt.org/) in the Appwrite internal queue server'
        ),
        Subcommand(
          name: 'getQueueFunctions'
        ),
        Subcommand(
          name: 'getQueueLogs',
          description: 'Get the number of logs that are waiting to be processed in the Appwrite internal queue server'
        ),
        Subcommand(
          name: 'getQueueWebhooks',
          description: 'Get the number of webhooks that are waiting to be processed in the Appwrite internal queue server'
        ),
        Subcommand(
          name: 'getStorageLocal',
          description: 'Check the Appwrite local storage device is up and connection is successful'
        ),
        Subcommand(
          name: 'getTime',
          description: 'Check the Appwrite server time is synced with Google remote NTP server. We use this technology to smoothly handle leap seconds with no disruptive events. The [Network Time Protocol](https://en.wikipedia.org/wiki/Network_Time_Protocol) (NTP) is used by hundreds of millions of computers and devices to synchronize their clocks over the Internet. If your computer sets its own clock, it likely uses NTP'
        )
      ]
    ),
    Subcommand(
      name: 'locale',
      description: 'The locale command allows you to customize your app based on your users\' location',
      subcommands: [
        Subcommand(
          name: 'get',
          description: 'Get the current user location based on IP. Returns an object with user country code, country name, continent name, continent code, ip address and suggested currency. You can use the locale header to get the data in a supported language.  ([IP Geolocation by DB-IP](https://db-ip.com))'
        ),
        Subcommand(
          name: 'getContinents',
          description: 'List of all continents. You can use the locale header to get the data in a supported language'
        ),
        Subcommand(
          name: 'getCountries',
          description: 'List of all countries. You can use the locale header to get the data in a supported language'
        ),
        Subcommand(
          name: 'getCountriesEU',
          description: 'List of all countries that are currently members of the EU. You can use the locale header to get the data in a supported language'
        ),
        Subcommand(
          name: 'getCountriesPhones',
          description: 'List of all countries phone codes. You can use the locale header to get the data in a supported language'
        ),
        Subcommand(
          name: 'getCurrencies',
          description: 'List of all currencies, including currency symbol, name, plural, and decimal digits for all major and minor currencies. You can use the locale header to get the data in a supported language'
        ),
        Subcommand(
          name: 'getLanguages',
          description: 'List of all languages classified by ISO 639-1 including 2-letter code, name in English, and name in the respective language'
        )
      ]
    ),
    Subcommand(
      name: 'projects',
      description: 'The projects command allows you to view, create and manage your Appwrite projects',
      subcommands: [
        Subcommand(
          name: 'list',
          options: [
            Option(
              name: '--search',
              description: 'Search term to filter your list results. Max length: 256 chars',
              args: [
                Arg(
                name: 'searc'
              )
              ]
            ),
            Option(
              name: '--limit',
              description: 'Results limit value. By default will return maximum 25 results. Maximum of 100 results allowed per request',
              args: [
                Arg(
                name: 'limi'
              )
              ]
            ),
            Option(
              name: '--offset',
              description: 'Results offset. The default value is 0. Use this param to manage pagination. [learn more about pagination](https://appwrite.io/docs/pagination)',
              args: [
                Arg(
                name: 'offse'
              )
              ]
            ),
            Option(
              name: '--cursor',
              description: 'ID of the project used as the starting point for the query, excluding the project itself. Should be used for efficient pagination when working with large sets of data. [learn more about pagination](https://appwrite.io/docs/pagination)',
              args: [
                Arg(
                name: 'curso'
              )
              ]
            ),
            Option(
              name: '--cursorDirection',
              description: 'Direction of the cursor, can be either \'before\' or \'after\'',
              args: [
                Arg(
                name: 'cursorDirectio'
              )
              ]
            ),
            Option(
              name: '--orderType',
              description: 'Order result by ASC or DESC order',
              args: [
                Arg(
                name: 'orderTyp'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'create',
          options: [
            Option(
              name: '--projectId',
              description: 'Unique Id. Choose your own unique ID or pass the string "unique()" to auto generate it. Valid chars are a-z, A-Z, 0-9, period, hyphen, and underscore. Can\'t start with a special char. Max length is 36 chars',
              args: [
                Arg(
                name: 'projectI'
              )
              ]
            ),
            Option(
              name: '--name',
              description: 'Project name. Max length: 128 chars',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--teamId',
              description: 'Team unique ID',
              args: [
                Arg(
                name: 'teamI'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'Project description. Max length: 256 chars',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--logo',
              description: 'Project logo',
              args: [
                Arg(
                name: 'log'
              )
              ]
            ),
            Option(
              name: '--url',
              description: 'Project URL',
              args: [
                Arg(
                name: 'ur'
              )
              ]
            ),
            Option(
              name: '--legalName',
              description: 'Project legal Name. Max length: 256 chars',
              args: [
                Arg(
                name: 'legalNam'
              )
              ]
            ),
            Option(
              name: '--legalCountry',
              description: 'Project legal Country. Max length: 256 chars',
              args: [
                Arg(
                name: 'legalCountr'
              )
              ]
            ),
            Option(
              name: '--legalState',
              description: 'Project legal State. Max length: 256 chars',
              args: [
                Arg(
                name: 'legalStat'
              )
              ]
            ),
            Option(
              name: '--legalCity',
              description: 'Project legal City. Max length: 256 chars',
              args: [
                Arg(
                name: 'legalCit'
              )
              ]
            ),
            Option(
              name: '--legalAddress',
              description: 'Project legal Address. Max length: 256 chars',
              args: [
                Arg(
                name: 'legalAddres'
              )
              ]
            ),
            Option(
              name: '--legalTaxId',
              description: 'Project legal Tax ID. Max length: 256 chars',
              args: [
                Arg(
                name: 'legalTaxI'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'get',
          options: [
            Option(
              name: '--projectId',
              description: 'Project unique ID',
              args: [
                Arg(
                name: 'projectI'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          options: [
            Option(
              name: '--projectId',
              description: 'Project unique ID',
              args: [
                Arg(
                name: 'projectI'
              )
              ]
            ),
            Option(
              name: '--name',
              description: 'Project name. Max length: 128 chars',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'Project description. Max length: 256 chars',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--logo',
              description: 'Project logo',
              args: [
                Arg(
                name: 'log'
              )
              ]
            ),
            Option(
              name: '--url',
              description: 'Project URL',
              args: [
                Arg(
                name: 'ur'
              )
              ]
            ),
            Option(
              name: '--legalName',
              description: 'Project legal name. Max length: 256 chars',
              args: [
                Arg(
                name: 'legalNam'
              )
              ]
            ),
            Option(
              name: '--legalCountry',
              description: 'Project legal country. Max length: 256 chars',
              args: [
                Arg(
                name: 'legalCountr'
              )
              ]
            ),
            Option(
              name: '--legalState',
              description: 'Project legal state. Max length: 256 chars',
              args: [
                Arg(
                name: 'legalStat'
              )
              ]
            ),
            Option(
              name: '--legalCity',
              description: 'Project legal city. Max length: 256 chars',
              args: [
                Arg(
                name: 'legalCit'
              )
              ]
            ),
            Option(
              name: '--legalAddress',
              description: 'Project legal address. Max length: 256 chars',
              args: [
                Arg(
                name: 'legalAddres'
              )
              ]
            ),
            Option(
              name: '--legalTaxId',
              description: 'Project legal tax ID. Max length: 256 chars',
              args: [
                Arg(
                name: 'legalTaxI'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          options: [
            Option(
              name: '--projectId',
              description: 'Project unique ID',
              args: [
                Arg(
                name: 'projectI'
              )
              ]
            ),
            Option(
              name: '--password',
              description: 'Your user password for confirmation. Must be at least 8 chars',
              args: [
                Arg(
                name: 'passwor'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'updateAuthLimit',
          options: [
            Option(
              name: '--projectId',
              description: 'Project unique ID',
              args: [
                Arg(
                name: 'projectI'
              )
              ]
            ),
            Option(
              name: '--limit',
              description: 'Set the max number of users allowed in this project. Use 0 for unlimited',
              args: [
                Arg(
                name: 'limi'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'updateAuthStatus',
          options: [
            Option(
              name: '--projectId',
              description: 'Project unique ID',
              args: [
                Arg(
                name: 'projectI'
              )
              ]
            ),
            Option(
              name: '--method',
              description: 'Auth Method. Possible values: email-password,magic-url,anonymous,invites,jwt,phone',
              args: [
                Arg(
                name: 'metho'
              )
              ]
            ),
            Option(
              name: '--status',
              description: 'Set the status of this auth method',
              args: [
                Arg(
                name: 'statu'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'listDomains',
          options: [
            Option(
              name: '--projectId',
              description: 'Project unique ID',
              args: [
                Arg(
                name: 'projectI'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'createDomain',
          options: [
            Option(
              name: '--projectId',
              description: 'Project unique ID',
              args: [
                Arg(
                name: 'projectI'
              )
              ]
            ),
            Option(
              name: '--domain',
              description: 'Domain name',
              args: [
                Arg(
                name: 'domai'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'getDomain',
          options: [
            Option(
              name: '--projectId',
              description: 'Project unique ID',
              args: [
                Arg(
                name: 'projectI'
              )
              ]
            ),
            Option(
              name: '--domainId',
              description: 'Domain unique ID',
              args: [
                Arg(
                name: 'domainI'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'deleteDomain',
          options: [
            Option(
              name: '--projectId',
              description: 'Project unique ID',
              args: [
                Arg(
                name: 'projectI'
              )
              ]
            ),
            Option(
              name: '--domainId',
              description: 'Domain unique ID',
              args: [
                Arg(
                name: 'domainI'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'updateDomainVerification',
          options: [
            Option(
              name: '--projectId',
              description: 'Project unique ID',
              args: [
                Arg(
                name: 'projectI'
              )
              ]
            ),
            Option(
              name: '--domainId',
              description: 'Domain unique ID',
              args: [
                Arg(
                name: 'domainI'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'listKeys',
          options: [
            Option(
              name: '--projectId',
              description: 'Project unique ID',
              args: [
                Arg(
                name: 'projectI'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'createKey',
          options: [
            Option(
              name: '--projectId',
              description: 'Project unique ID',
              args: [
                Arg(
                name: 'projectI'
              )
              ]
            ),
            Option(
              name: '--name',
              description: 'Key name. Max length: 128 chars',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--scopes',
              description: 'Key scopes list. Maximum of 100 scopes are allowed',
              args: [
                Arg(
                name: 'scopes'
              )
              ]
            ),
            Option(
              name: '--expire',
              description: 'Key expiration time in Unix timestamp. Use 0 for unlimited expiration',
              args: [
                Arg(
                name: 'expir'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'getKey',
          options: [
            Option(
              name: '--projectId',
              description: 'Project unique ID',
              args: [
                Arg(
                name: 'projectI'
              )
              ]
            ),
            Option(
              name: '--keyId',
              description: 'Key unique ID',
              args: [
                Arg(
                name: 'keyI'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'updateKey',
          options: [
            Option(
              name: '--projectId',
              description: 'Project unique ID',
              args: [
                Arg(
                name: 'projectI'
              )
              ]
            ),
            Option(
              name: '--keyId',
              description: 'Key unique ID',
              args: [
                Arg(
                name: 'keyI'
              )
              ]
            ),
            Option(
              name: '--name',
              description: 'Key name. Max length: 128 chars',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--scopes',
              description: 'Key scopes list. Maximum of 100 events are allowed',
              args: [
                Arg(
                name: 'scopes'
              )
              ]
            ),
            Option(
              name: '--expire',
              description: 'Key expiration time in Unix timestamp. Use 0 for unlimited expiration',
              args: [
                Arg(
                name: 'expir'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'deleteKey',
          options: [
            Option(
              name: '--projectId',
              description: 'Project unique ID',
              args: [
                Arg(
                name: 'projectI'
              )
              ]
            ),
            Option(
              name: '--keyId',
              description: 'Key unique ID',
              args: [
                Arg(
                name: 'keyI'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'updateOAuth2',
          options: [
            Option(
              name: '--projectId',
              description: 'Project unique ID',
              args: [
                Arg(
                name: 'projectI'
              )
              ]
            ),
            Option(
              name: '--provider',
              description: 'Provider Name',
              args: [
                Arg(
                name: 'provide'
              )
              ]
            ),
            Option(
              name: '--appId',
              description: 'Provider app ID. Max length: 256 chars',
              args: [
                Arg(
                name: 'appI'
              )
              ]
            ),
            Option(
              name: '--secret',
              description: 'Provider secret key. Max length: 512 chars',
              args: [
                Arg(
                name: 'secre'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'listPlatforms',
          options: [
            Option(
              name: '--projectId',
              description: 'Project unique ID',
              args: [
                Arg(
                name: 'projectI'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'createPlatform',
          options: [
            Option(
              name: '--projectId',
              description: 'Project unique ID',
              args: [
                Arg(
                name: 'projectI'
              )
              ]
            ),
            Option(
              name: '--type',
              description: 'Platform type',
              args: [
                Arg(
                name: 'typ'
              )
              ]
            ),
            Option(
              name: '--name',
              description: 'Platform name. Max length: 128 chars',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--key',
              description: 'Package name for Android or bundle ID for iOS or macOS. Max length: 256 chars',
              args: [
                Arg(
                name: 'ke'
              )
              ]
            ),
            Option(
              name: '--store',
              description: 'App store or Google Play store ID. Max length: 256 chars',
              args: [
                Arg(
                name: 'stor'
              )
              ]
            ),
            Option(
              name: '--hostname',
              description: 'Platform client hostname. Max length: 256 chars',
              args: [
                Arg(
                name: 'hostnam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'getPlatform',
          options: [
            Option(
              name: '--projectId',
              description: 'Project unique ID',
              args: [
                Arg(
                name: 'projectI'
              )
              ]
            ),
            Option(
              name: '--platformId',
              description: 'Platform unique ID',
              args: [
                Arg(
                name: 'platformI'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'updatePlatform',
          options: [
            Option(
              name: '--projectId',
              description: 'Project unique ID',
              args: [
                Arg(
                name: 'projectI'
              )
              ]
            ),
            Option(
              name: '--platformId',
              description: 'Platform unique ID',
              args: [
                Arg(
                name: 'platformI'
              )
              ]
            ),
            Option(
              name: '--name',
              description: 'Platform name. Max length: 128 chars',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--key',
              description: 'Package name for android or bundle ID for iOS. Max length: 256 chars',
              args: [
                Arg(
                name: 'ke'
              )
              ]
            ),
            Option(
              name: '--store',
              description: 'App store or Google Play store ID. Max length: 256 chars',
              args: [
                Arg(
                name: 'stor'
              )
              ]
            ),
            Option(
              name: '--hostname',
              description: 'Platform client URL. Max length: 256 chars',
              args: [
                Arg(
                name: 'hostnam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'deletePlatform',
          options: [
            Option(
              name: '--projectId',
              description: 'Project unique ID',
              args: [
                Arg(
                name: 'projectI'
              )
              ]
            ),
            Option(
              name: '--platformId',
              description: 'Platform unique ID',
              args: [
                Arg(
                name: 'platformI'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'updateServiceStatus',
          options: [
            Option(
              name: '--projectId',
              description: 'Project unique ID',
              args: [
                Arg(
                name: 'projectI'
              )
              ]
            ),
            Option(
              name: '--service',
              description: 'Service name',
              args: [
                Arg(
                name: 'servic'
              )
              ]
            ),
            Option(
              name: '--status',
              description: 'Service status',
              args: [
                Arg(
                name: 'statu'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'getUsage',
          options: [
            Option(
              name: '--projectId',
              description: 'Project unique ID',
              args: [
                Arg(
                name: 'projectI'
              )
              ]
            ),
            Option(
              name: '--range',
              description: 'Date range',
              args: [
                Arg(
                name: 'rang'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'listWebhooks',
          options: [
            Option(
              name: '--projectId',
              description: 'Project unique ID',
              args: [
                Arg(
                name: 'projectI'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'createWebhook',
          options: [
            Option(
              name: '--projectId',
              description: 'Project unique ID',
              args: [
                Arg(
                name: 'projectI'
              )
              ]
            ),
            Option(
              name: '--name',
              description: 'Webhook name. Max length: 128 chars',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--events',
              description: 'Events list. Maximum of 100 events are allowed',
              args: [
                Arg(
                name: 'events'
              )
              ]
            ),
            Option(
              name: '--url',
              description: 'Webhook URL',
              args: [
                Arg(
                name: 'ur'
              )
              ]
            ),
            Option(
              name: '--security',
              description: 'Certificate verification, false for disabled or true for enabled',
              args: [
                Arg(
                name: 'securit'
              )
              ]
            ),
            Option(
              name: '--httpUser',
              description: 'Webhook HTTP user. Max length: 256 chars',
              args: [
                Arg(
                name: 'httpUse'
              )
              ]
            ),
            Option(
              name: '--httpPass',
              description: 'Webhook HTTP password. Max length: 256 chars',
              args: [
                Arg(
                name: 'httpPas'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'getWebhook',
          options: [
            Option(
              name: '--projectId',
              description: 'Project unique ID',
              args: [
                Arg(
                name: 'projectI'
              )
              ]
            ),
            Option(
              name: '--webhookId',
              description: 'Webhook unique ID',
              args: [
                Arg(
                name: 'webhookI'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'updateWebhook',
          options: [
            Option(
              name: '--projectId',
              description: 'Project unique ID',
              args: [
                Arg(
                name: 'projectI'
              )
              ]
            ),
            Option(
              name: '--webhookId',
              description: 'Webhook unique ID',
              args: [
                Arg(
                name: 'webhookI'
              )
              ]
            ),
            Option(
              name: '--name',
              description: 'Webhook name. Max length: 128 chars',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--events',
              description: 'Events list. Maximum of 100 events are allowed',
              args: [
                Arg(
                name: 'events'
              )
              ]
            ),
            Option(
              name: '--url',
              description: 'Webhook URL',
              args: [
                Arg(
                name: 'ur'
              )
              ]
            ),
            Option(
              name: '--security',
              description: 'Certificate verification, false for disabled or true for enabled',
              args: [
                Arg(
                name: 'securit'
              )
              ]
            ),
            Option(
              name: '--httpUser',
              description: 'Webhook HTTP user. Max length: 256 chars',
              args: [
                Arg(
                name: 'httpUse'
              )
              ]
            ),
            Option(
              name: '--httpPass',
              description: 'Webhook HTTP password. Max length: 256 chars',
              args: [
                Arg(
                name: 'httpPas'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'deleteWebhook',
          options: [
            Option(
              name: '--projectId',
              description: 'Project unique ID',
              args: [
                Arg(
                name: 'projectI'
              )
              ]
            ),
            Option(
              name: '--webhookId',
              description: 'Webhook unique ID',
              args: [
                Arg(
                name: 'webhookI'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'updateWebhookSignature',
          options: [
            Option(
              name: '--projectId',
              description: 'Project unique ID',
              args: [
                Arg(
                name: 'projectI'
              )
              ]
            ),
            Option(
              name: '--webhookId',
              description: 'Webhook unique ID',
              args: [
                Arg(
                name: 'webhookI'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'storage',
      description: 'The storage command allows you to manage your project files',
      subcommands: [
        Subcommand(
          name: 'listBuckets',
          description: 'Get a list of all the storage buckets. You can use the query params to filter your results',
          options: [
            Option(
              name: '--search',
              description: 'Search term to filter your list results. Max length: 256 chars',
              args: [
                Arg(
                name: 'searc'
              )
              ]
            ),
            Option(
              name: '--limit',
              description: 'Results limit value. By default will return maximum 25 results. Maximum of 100 results allowed per request',
              args: [
                Arg(
                name: 'limi'
              )
              ]
            ),
            Option(
              name: '--offset',
              description: 'Results offset. The default value is 0. Use this param to manage pagination',
              args: [
                Arg(
                name: 'offse'
              )
              ]
            ),
            Option(
              name: '--cursor',
              description: 'ID of the bucket used as the starting point for the query, excluding the bucket itself. Should be used for efficient pagination when working with large sets of data',
              args: [
                Arg(
                name: 'curso'
              )
              ]
            ),
            Option(
              name: '--cursorDirection',
              description: 'Direction of the cursor, can be either \'before\' or \'after\'',
              args: [
                Arg(
                name: 'cursorDirectio'
              )
              ]
            ),
            Option(
              name: '--orderType',
              description: 'Order result by ASC or DESC order',
              args: [
                Arg(
                name: 'orderTyp'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'createBucket',
          description: 'Create a new storage bucket',
          options: [
            Option(
              name: '--bucketId',
              description: 'Unique Id. Choose your own unique ID or pass the string \'unique()\' to auto generate it. Valid chars are a-z, A-Z, 0-9, period, hyphen, and underscore. Can\'t start with a special char. Max length is 36 chars',
              args: [
                Arg(
                name: 'bucketI'
              )
              ]
            ),
            Option(
              name: '--name',
              description: 'Bucket name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--permission',
              description: 'Permissions type model to use for reading files in this bucket. You can use bucket-level permission set once on the bucket using the \'read\' and \'write\' params, or you can set file-level permission where each file read and write params will decide who has access to read and write to each file individually. [learn more about permissions](/docs/permissions) and get a full list of available permissions',
              args: [
                Arg(
                name: 'permissio'
              )
              ]
            ),
            Option(
              name: '--read',
              description: 'An array of strings with read permissions. By default no user is granted with any read permissions. [learn more about permissions](/docs/permissions) and get a full list of available permissions',
              args: [
                Arg(
                name: 'read'
              )
              ]
            ),
            Option(
              name: '--write',
              description: 'An array of strings with write permissions. By default no user is granted with any write permissions. [learn more about permissions](/docs/permissions) and get a full list of available permissions',
              args: [
                Arg(
                name: 'write'
              )
              ]
            ),
            Option(
              name: '--enabled',
              description: 'Is bucket enabled?',
              args: [
                Arg(
                name: 'enable'
              )
              ]
            ),
            Option(
              name: '--maximumFileSize',
              description: 'Maximum file size allowed in bytes. Maximum allowed value is 30MB. For self-hosted setups you can change the max limit by changing the \'_APP_STORAGE_LIMIT\' environment variable. [Learn more about storage environment variables](docs/environment-variables#storage)',
              args: [
                Arg(
                name: 'maximumFileSiz'
              )
              ]
            ),
            Option(
              name: '--allowedFileExtensions',
              description: 'Allowed file extensions. Maximum of 100 extensions are allowed, each 64 characters long',
              args: [
                Arg(
                name: 'allowedFileExtensions'
              )
              ]
            ),
            Option(
              name: '--encryption',
              description: 'Is encryption enabled? For file size above 20MB encryption is skipped even if it\'s enabled',
              args: [
                Arg(
                name: 'encryptio'
              )
              ]
            ),
            Option(
              name: '--antivirus',
              description: 'Is virus scanning enabled? For file size above 20MB AntiVirus scanning is skipped even if it\'s enabled',
              args: [
                Arg(
                name: 'antiviru'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'getBucket',
          description: 'Get a storage bucket by its unique ID. This endpoint response returns a JSON object with the storage bucket metadata',
          options: [
            Option(
              name: '--bucketId',
              description: 'Bucket unique ID',
              args: [
                Arg(
                name: 'bucketI'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'updateBucket',
          description: 'Update a storage bucket by its unique ID',
          options: [
            Option(
              name: '--bucketId',
              description: 'Bucket unique ID',
              args: [
                Arg(
                name: 'bucketI'
              )
              ]
            ),
            Option(
              name: '--name',
              description: 'Bucket name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--permission',
              description: 'Permissions type model to use for reading files in this bucket. You can use bucket-level permission set once on the bucket using the \'read\' and \'write\' params, or you can set file-level permission where each file read and write params will decide who has access to read and write to each file individually. [learn more about permissions](/docs/permissions) and get a full list of available permissions',
              args: [
                Arg(
                name: 'permissio'
              )
              ]
            ),
            Option(
              name: '--read',
              description: 'An array of strings with read permissions. By default inherits the existing read permissions. [learn more about permissions](/docs/permissions) and get a full list of available permissions',
              args: [
                Arg(
                name: 'read'
              )
              ]
            ),
            Option(
              name: '--write',
              description: 'An array of strings with write permissions. By default inherits the existing write permissions. [learn more about permissions](/docs/permissions) and get a full list of available permissions',
              args: [
                Arg(
                name: 'write'
              )
              ]
            ),
            Option(
              name: '--enabled',
              description: 'Is bucket enabled?',
              args: [
                Arg(
                name: 'enable'
              )
              ]
            ),
            Option(
              name: '--maximumFileSize',
              description: 'Maximum file size allowed in bytes. Maximum allowed value is 30MB. For self hosted version you can change the limit by changing _APP_STORAGE_LIMIT environment variable. [Learn more about storage environment variables](docs/environment-variables#storage)',
              args: [
                Arg(
                name: 'maximumFileSiz'
              )
              ]
            ),
            Option(
              name: '--allowedFileExtensions',
              description: 'Allowed file extensions. Maximum of 100 extensions are allowed, each 64 characters long',
              args: [
                Arg(
                name: 'allowedFileExtensions'
              )
              ]
            ),
            Option(
              name: '--encryption',
              description: 'Is encryption enabled? For file size above 20MB encryption is skipped even if it\'s enabled',
              args: [
                Arg(
                name: 'encryptio'
              )
              ]
            ),
            Option(
              name: '--antivirus',
              description: 'Is virus scanning enabled? For file size above 20MB AntiVirus scanning is skipped even if it\'s enabled',
              args: [
                Arg(
                name: 'antiviru'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'deleteBucket',
          description: 'Delete a storage bucket by its unique ID',
          options: [
            Option(
              name: '--bucketId',
              description: 'Bucket unique ID',
              args: [
                Arg(
                name: 'bucketI'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'listFiles',
          description: 'Get a list of all the user files. You can use the query params to filter your results. On admin mode, this endpoint will return a list of all of the project\'s files. [Learn more about different API modes](/docs/admin)',
          options: [
            Option(
              name: '--bucketId',
              description: 'Storage bucket unique ID. You can create a new storage bucket using the Storage service [server integration](/docs/server/storage#createBucket)',
              args: [
                Arg(
                name: 'bucketI'
              )
              ]
            ),
            Option(
              name: '--search',
              description: 'Search term to filter your list results. Max length: 256 chars',
              args: [
                Arg(
                name: 'searc'
              )
              ]
            ),
            Option(
              name: '--limit',
              description: 'Maximum number of files to return in response. By default will return maximum 25 results. Maximum of 100 results allowed per request',
              args: [
                Arg(
                name: 'limi'
              )
              ]
            ),
            Option(
              name: '--offset',
              description: 'Offset value. The default value is 0. Use this param to manage pagination. [learn more about pagination](https://appwrite.io/docs/pagination)',
              args: [
                Arg(
                name: 'offse'
              )
              ]
            ),
            Option(
              name: '--cursor',
              description: 'ID of the file used as the starting point for the query, excluding the file itself. Should be used for efficient pagination when working with large sets of data. [learn more about pagination](https://appwrite.io/docs/pagination)',
              args: [
                Arg(
                name: 'curso'
              )
              ]
            ),
            Option(
              name: '--cursorDirection',
              description: 'Direction of the cursor, can be either \'before\' or \'after\'',
              args: [
                Arg(
                name: 'cursorDirectio'
              )
              ]
            ),
            Option(
              name: '--orderType',
              description: 'Order result by ASC or DESC order',
              args: [
                Arg(
                name: 'orderTyp'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'createFile',
          description: 'Create a new file. Before using this route, you should create a new bucket resource using either a [server integration](/docs/server/database#storageCreateBucket) API or directly from your Appwrite console.  Larger files should be uploaded using multiple requests with the [content-range](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Range) header to send a partial request with a maximum supported chunk of \'5MB\'. The \'content-range\' header values should always be in bytes.  When the first request is sent, the server will return the **File** object, and the subsequent part request must include the file\'s **id** in \'x-appwrite-id\' header to allow the server to know that the partial upload is for the existing file and not for a new one.  If you\'re creating a new file using one of the Appwrite SDKs, all the chunking logic will be managed by the SDK internally',
          options: [
            Option(
              name: '--bucketId',
              description: 'Storage bucket unique ID. You can create a new storage bucket using the Storage service [server integration](/docs/server/storage#createBucket)',
              args: [
                Arg(
                name: 'bucketI'
              )
              ]
            ),
            Option(
              name: '--fileId',
              description: 'File ID. Choose your own unique ID or pass the string "unique()" to auto generate it. Valid chars are a-z, A-Z, 0-9, period, hyphen, and underscore. Can\'t start with a special char. Max length is 36 chars',
              args: [
                Arg(
                name: 'fileI'
              )
              ]
            ),
            Option(
              name: '--file',
              description: 'Binary file',
              args: [
                Arg(
                name: 'fil'
              )
              ]
            ),
            Option(
              name: '--read',
              description: 'An array of strings with read permissions. By default only the current user is granted with read permissions. [learn more about permissions](https://appwrite.io/docs/permissions) and get a full list of available permissions',
              args: [
                Arg(
                name: 'read'
              )
              ]
            ),
            Option(
              name: '--write',
              description: 'An array of strings with write permissions. By default only the current user is granted with write permissions. [learn more about permissions](https://appwrite.io/docs/permissions) and get a full list of available permissions',
              args: [
                Arg(
                name: 'write'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'getFile',
          description: 'Get a file by its unique ID. This endpoint response returns a JSON object with the file metadata',
          options: [
            Option(
              name: '--bucketId',
              description: 'Storage bucket unique ID. You can create a new storage bucket using the Storage service [server integration](/docs/server/storage#createBucket)',
              args: [
                Arg(
                name: 'bucketI'
              )
              ]
            ),
            Option(
              name: '--fileId',
              description: 'File ID',
              args: [
                Arg(
                name: 'fileI'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'updateFile',
          description: 'Update a file by its unique ID. Only users with write permissions have access to update this resource',
          options: [
            Option(
              name: '--bucketId',
              description: 'Storage bucket unique ID. You can create a new storage bucket using the Storage service [server integration](/docs/server/storage#createBucket)',
              args: [
                Arg(
                name: 'bucketI'
              )
              ]
            ),
            Option(
              name: '--fileId',
              description: 'File unique ID',
              args: [
                Arg(
                name: 'fileI'
              )
              ]
            ),
            Option(
              name: '--read',
              description: 'An array of strings with read permissions. By default no user is granted with any read permissions. [learn more about permissions](https://appwrite.io/docs/permissions) and get a full list of available permissions',
              args: [
                Arg(
                name: 'read'
              )
              ]
            ),
            Option(
              name: '--write',
              description: 'An array of strings with write permissions. By default no user is granted with any write permissions. [learn more about permissions](https://appwrite.io/docs/permissions) and get a full list of available permissions',
              args: [
                Arg(
                name: 'write'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'deleteFile',
          description: 'Delete a file by its unique ID. Only users with write permissions have access to delete this resource',
          options: [
            Option(
              name: '--bucketId',
              description: 'Storage bucket unique ID. You can create a new storage bucket using the Storage service [server integration](/docs/server/storage#createBucket)',
              args: [
                Arg(
                name: 'bucketI'
              )
              ]
            ),
            Option(
              name: '--fileId',
              description: 'File ID',
              args: [
                Arg(
                name: 'fileI'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'getFileDownload',
          description: 'Get a file content by its unique ID. The endpoint response return with a \'Content-Disposition: attachment\' header that tells the browser to start downloading the file to user downloads directory',
          options: [
            Option(
              name: '--bucketId',
              description: 'Storage bucket ID. You can create a new storage bucket using the Storage service [server integration](/docs/server/storage#createBucket)',
              args: [
                Arg(
                name: 'bucketI'
              )
              ]
            ),
            Option(
              name: '--fileId',
              description: 'File ID',
              args: [
                Arg(
                name: 'fileI'
              )
              ]
            ),
            Option(
              name: '--destination',
              description: 'Output file path',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'getFilePreview',
          description: 'Get a file preview image. Currently, this method supports preview for image files (jpg, png, and gif), other supported formats, like pdf, docs, slides, and spreadsheets, will return the file icon image. You can also pass query string arguments for cutting and resizing your preview image. Preview is supported only for image files smaller than 10MB',
          options: [
            Option(
              name: '--bucketId',
              description: 'Storage bucket unique ID. You can create a new storage bucket using the Storage service [server integration](/docs/server/storage#createBucket)',
              args: [
                Arg(
                name: 'bucketI'
              )
              ]
            ),
            Option(
              name: '--fileId',
              description: 'File ID',
              args: [
                Arg(
                name: 'fileI'
              )
              ]
            ),
            Option(
              name: '--width',
              description: 'Resize preview image width, Pass an integer between 0 to 4000',
              args: [
                Arg(
                name: 'widt'
              )
              ]
            ),
            Option(
              name: '--height',
              description: 'Resize preview image height, Pass an integer between 0 to 4000',
              args: [
                Arg(
                name: 'heigh'
              )
              ]
            ),
            Option(
              name: '--gravity',
              description: 'Image crop gravity. Can be one of center,top-left,top,top-right,left,right,bottom-left,bottom,bottom-right',
              args: [
                Arg(
                name: 'gravit'
              )
              ]
            ),
            Option(
              name: '--quality',
              description: 'Preview image quality. Pass an integer between 0 to 100. Defaults to 100',
              args: [
                Arg(
                name: 'qualit'
              )
              ]
            ),
            Option(
              name: '--borderWidth',
              description: 'Preview image border in pixels. Pass an integer between 0 to 100. Defaults to 0',
              args: [
                Arg(
                name: 'borderWidt'
              )
              ]
            ),
            Option(
              name: '--borderColor',
              description: 'Preview image border color. Use a valid HEX color, no # is needed for prefix',
              args: [
                Arg(
                name: 'borderColo'
              )
              ]
            ),
            Option(
              name: '--borderRadius',
              description: 'Preview image border radius in pixels. Pass an integer between 0 to 4000',
              args: [
                Arg(
                name: 'borderRadiu'
              )
              ]
            ),
            Option(
              name: '--opacity',
              description: 'Preview image opacity. Only works with images having an alpha channel (like png). Pass a number between 0 to 1',
              args: [
                Arg(
                name: 'opacit'
              )
              ]
            ),
            Option(
              name: '--rotation',
              description: 'Preview image rotation in degrees. Pass an integer between -360 and 360',
              args: [
                Arg(
                name: 'rotatio'
              )
              ]
            ),
            Option(
              name: '--background',
              description: 'Preview image background color. Only works with transparent images (png). Use a valid HEX color, no # is needed for prefix',
              args: [
                Arg(
                name: 'backgroun'
              )
              ]
            ),
            Option(
              name: '--output',
              description: 'Output format type (jpeg, jpg, png, gif and webp)',
              args: [
                Arg(
                name: 'outpu'
              )
              ]
            ),
            Option(
              name: '--destination',
              description: 'Output file path',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'getFileView',
          description: 'Get a file content by its unique ID. This endpoint is similar to the download method but returns with no  \'Content-Disposition: attachment\' header',
          options: [
            Option(
              name: '--bucketId',
              description: 'Storage bucket unique ID. You can create a new storage bucket using the Storage service [server integration](/docs/server/storage#createBucket)',
              args: [
                Arg(
                name: 'bucketI'
              )
              ]
            ),
            Option(
              name: '--fileId',
              description: 'File ID',
              args: [
                Arg(
                name: 'fileI'
              )
              ]
            ),
            Option(
              name: '--destination',
              description: 'Output file path',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'getUsage',
          options: [
            Option(
              name: '--range',
              description: 'Date range',
              args: [
                Arg(
                name: 'rang'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'getBucketUsage',
          options: [
            Option(
              name: '--bucketId',
              description: 'Bucket ID',
              args: [
                Arg(
                name: 'bucketI'
              )
              ]
            ),
            Option(
              name: '--range',
              description: 'Date range',
              args: [
                Arg(
                name: 'rang'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'teams',
      description: 'The teams command allows you to group users of your project and to enable them to share read and write access to your project resources',
      subcommands: [
        Subcommand(
          name: 'list',
          description: 'Get a list of all the teams in which the current user is a member. You can use the parameters to filter your results.\n \n In admin mode, this endpoint returns a list of all the teams in the current project. [Learn more about different API modes](/docs/admin)',
          options: [
            Option(
              name: '--search',
              description: 'Search term to filter your list results. Max length: 256 chars',
              args: [
                Arg(
                name: 'searc'
              )
              ]
            ),
            Option(
              name: '--limit',
              description: 'Maximum number of teams to return in response. By default will return maximum 25 results. Maximum of 100 results allowed per request',
              args: [
                Arg(
                name: 'limi'
              )
              ]
            ),
            Option(
              name: '--offset',
              description: 'Offset value. The default value is 0. Use this param to manage pagination. [learn more about pagination](https://appwrite.io/docs/pagination)',
              args: [
                Arg(
                name: 'offse'
              )
              ]
            ),
            Option(
              name: '--cursor',
              description: 'ID of the team used as the starting point for the query, excluding the team itself. Should be used for efficient pagination when working with large sets of data. [learn more about pagination](https://appwrite.io/docs/pagination)',
              args: [
                Arg(
                name: 'curso'
              )
              ]
            ),
            Option(
              name: '--cursorDirection',
              description: 'Direction of the cursor, can be either \'before\' or \'after\'',
              args: [
                Arg(
                name: 'cursorDirectio'
              )
              ]
            ),
            Option(
              name: '--orderType',
              description: 'Order result by ASC or DESC order',
              args: [
                Arg(
                name: 'orderTyp'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'create',
          description: 'Create a new team. The user who creates the team will automatically be assigned as the owner of the team. Only the users with the owner role can invite new members, add new owners and delete or update the team',
          options: [
            Option(
              name: '--teamId',
              description: 'Team ID. Choose your own unique ID or pass the string "unique()" to auto generate it. Valid chars are a-z, A-Z, 0-9, period, hyphen, and underscore. Can\'t start with a special char. Max length is 36 chars',
              args: [
                Arg(
                name: 'teamI'
              )
              ]
            ),
            Option(
              name: '--name',
              description: 'Team name. Max length: 128 chars',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--roles',
              description: 'Array of strings. Use this param to set the roles in the team for the user who created it. The default role is **owner**. A role can be any string. Learn more about [roles and permissions](/docs/permissions). Maximum of 100 roles are allowed, each 32 characters long',
              args: [
                Arg(
                name: 'roles'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'get',
          description: 'Get a team by its ID. All team members have read access for this resource',
          options: [
            Option(
              name: '--teamId',
              description: 'Team ID',
              args: [
                Arg(
                name: 'teamI'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update a team using its ID. Only members with the owner role can update the team',
          options: [
            Option(
              name: '--teamId',
              description: 'Team ID',
              args: [
                Arg(
                name: 'teamI'
              )
              ]
            ),
            Option(
              name: '--name',
              description: 'New team name. Max length: 128 chars',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a team using its ID. Only team members with the owner role can delete the team',
          options: [
            Option(
              name: '--teamId',
              description: 'Team ID',
              args: [
                Arg(
                name: 'teamI'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'listLogs',
          description: 'Get the team activity logs list by its unique ID',
          options: [
            Option(
              name: '--teamId',
              description: 'Team ID',
              args: [
                Arg(
                name: 'teamI'
              )
              ]
            ),
            Option(
              name: '--limit',
              description: 'Maximum number of logs to return in response. By default will return maximum 25 results. Maximum of 100 results allowed per request',
              args: [
                Arg(
                name: 'limi'
              )
              ]
            ),
            Option(
              name: '--offset',
              description: 'Offset value. The default value is 0. Use this value to manage pagination. [learn more about pagination](https://appwrite.io/docs/pagination)',
              args: [
                Arg(
                name: 'offse'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'getMemberships',
          description: 'Use this endpoint to list a team\'s members using the team\'s ID. All team members have read access to this endpoint',
          options: [
            Option(
              name: '--teamId',
              description: 'Team ID',
              args: [
                Arg(
                name: 'teamI'
              )
              ]
            ),
            Option(
              name: '--search',
              description: 'Search term to filter your list results. Max length: 256 chars',
              args: [
                Arg(
                name: 'searc'
              )
              ]
            ),
            Option(
              name: '--limit',
              description: 'Maximum number of memberships to return in response. By default will return maximum 25 results. Maximum of 100 results allowed per request',
              args: [
                Arg(
                name: 'limi'
              )
              ]
            ),
            Option(
              name: '--offset',
              description: 'Offset value. The default value is 0. Use this value to manage pagination. [learn more about pagination](https://appwrite.io/docs/pagination)',
              args: [
                Arg(
                name: 'offse'
              )
              ]
            ),
            Option(
              name: '--cursor',
              description: 'ID of the membership used as the starting point for the query, excluding the membership itself. Should be used for efficient pagination when working with large sets of data. [learn more about pagination](https://appwrite.io/docs/pagination)',
              args: [
                Arg(
                name: 'curso'
              )
              ]
            ),
            Option(
              name: '--cursorDirection',
              description: 'Direction of the cursor, can be either \'before\' or \'after\'',
              args: [
                Arg(
                name: 'cursorDirectio'
              )
              ]
            ),
            Option(
              name: '--orderType',
              description: 'Order result by ASC or DESC order',
              args: [
                Arg(
                name: 'orderTyp'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'createMembership',
          description: 'Invite a new member to join your team. If initiated from the client SDK, an email with a link to join the team will be sent to the member\'s email address and an account will be created for them should they not be signed up already. If initiated from server-side SDKs, the new member will automatically be added to the team.  Use the \'url\' parameter to redirect the user from the invitation email back to your app. When the user is redirected, use the [Update Team Membership Status](/docs/client/teams#teamsUpdateMembershipStatus) endpoint to allow the user to accept the invitation to the team.   Please note that to avoid a [Redirect Attack](https://github.com/OWASP/CheatSheetSeries/blob/master/cheatsheets/Unvalidated_Redirects_and_Forwards_Cheat_Sheet.md) the only valid redirect URL\'s are the once from domains you have set when adding your platforms in the console interface',
          options: [
            Option(
              name: '--teamId',
              description: 'Team ID',
              args: [
                Arg(
                name: 'teamI'
              )
              ]
            ),
            Option(
              name: '--email',
              description: 'Email of the new team member',
              args: [
                Arg(
                name: 'emai'
              )
              ]
            ),
            Option(
              name: '--roles',
              description: 'Array of strings. Use this param to set the user roles in the team. A role can be any string. Learn more about [roles and permissions](/docs/permissions). Maximum of 100 roles are allowed, each 32 characters long',
              args: [
                Arg(
                name: 'roles'
              )
              ]
            ),
            Option(
              name: '--url',
              description: 'URL to redirect the user back to your app from the invitation email.  Only URLs from hostnames in your project platform list are allowed. This requirement helps to prevent an [open redirect](https://cheatsheetseries.owasp.org/cheatsheets/Unvalidated_Redirects_and_Forwards_Cheat_Sheet.html) attack against your project API',
              args: [
                Arg(
                name: 'ur'
              )
              ]
            ),
            Option(
              name: '--name',
              description: 'Name of the new team member. Max length: 128 chars',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'getMembership',
          description: 'Get a team member by the membership unique id. All team members have read access for this resource',
          options: [
            Option(
              name: '--teamId',
              description: 'Team ID',
              args: [
                Arg(
                name: 'teamI'
              )
              ]
            ),
            Option(
              name: '--membershipId',
              description: 'Membership ID',
              args: [
                Arg(
                name: 'membershipI'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'updateMembershipRoles',
          description: 'Modify the roles of a team member. Only team members with the owner role have access to this endpoint. Learn more about [roles and permissions](/docs/permissions)',
          options: [
            Option(
              name: '--teamId',
              description: 'Team ID',
              args: [
                Arg(
                name: 'teamI'
              )
              ]
            ),
            Option(
              name: '--membershipId',
              description: 'Membership ID',
              args: [
                Arg(
                name: 'membershipI'
              )
              ]
            ),
            Option(
              name: '--roles',
              description: 'An array of strings. Use this param to set the user\'s roles in the team. A role can be any string. Learn more about [roles and permissions](https://appwrite.io/docs/permissions). Maximum of 100 roles are allowed, each 32 characters long',
              args: [
                Arg(
                name: 'roles'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'deleteMembership',
          description: 'This endpoint allows a user to leave a team or for a team owner to delete the membership of any other team member. You can also use this endpoint to delete a user membership even if it is not accepted',
          options: [
            Option(
              name: '--teamId',
              description: 'Team ID',
              args: [
                Arg(
                name: 'teamI'
              )
              ]
            ),
            Option(
              name: '--membershipId',
              description: 'Membership ID',
              args: [
                Arg(
                name: 'membershipI'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'updateMembershipStatus',
          description: 'Use this endpoint to allow a user to accept an invitation to join a team after being redirected back to your app from the invitation email received by the user.  If the request is successful, a session for the user is automatically created',
          options: [
            Option(
              name: '--teamId',
              description: 'Team ID',
              args: [
                Arg(
                name: 'teamI'
              )
              ]
            ),
            Option(
              name: '--membershipId',
              description: 'Membership ID',
              args: [
                Arg(
                name: 'membershipI'
              )
              ]
            ),
            Option(
              name: '--secret',
              description: 'Secret key',
              args: [
                Arg(
                name: 'secre'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'users',
      description: 'The users command allows you to manage your project users',
      subcommands: [
        Subcommand(
          name: 'list',
          description: 'Get a list of all the project\'s users. You can use the query params to filter your results',
          options: [
            Option(
              name: '--search',
              description: 'Search term to filter your list results. Max length: 256 chars',
              args: [
                Arg(
                name: 'searc'
              )
              ]
            ),
            Option(
              name: '--limit',
              description: 'Maximum number of users to return in response. By default will return maximum 25 results. Maximum of 100 results allowed per request',
              args: [
                Arg(
                name: 'limi'
              )
              ]
            ),
            Option(
              name: '--offset',
              description: 'Offset value. The default value is 0. Use this param to manage pagination. [learn more about pagination](https://appwrite.io/docs/pagination)',
              args: [
                Arg(
                name: 'offse'
              )
              ]
            ),
            Option(
              name: '--cursor',
              description: 'ID of the user used as the starting point for the query, excluding the user itself. Should be used for efficient pagination when working with large sets of data. [learn more about pagination](https://appwrite.io/docs/pagination)',
              args: [
                Arg(
                name: 'curso'
              )
              ]
            ),
            Option(
              name: '--cursorDirection',
              description: 'Direction of the cursor, can be either \'before\' or \'after\'',
              args: [
                Arg(
                name: 'cursorDirectio'
              )
              ]
            ),
            Option(
              name: '--orderType',
              description: 'Order result by ASC or DESC order',
              args: [
                Arg(
                name: 'orderTyp'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'create',
          description: 'Create a new user',
          options: [
            Option(
              name: '--userId',
              description: 'User ID. Choose your own unique ID or pass the string "unique()" to auto generate it. Valid chars are a-z, A-Z, 0-9, period, hyphen, and underscore. Can\'t start with a special char. Max length is 36 chars',
              args: [
                Arg(
                name: 'userI'
              )
              ]
            ),
            Option(
              name: '--email',
              description: 'User email',
              args: [
                Arg(
                name: 'emai'
              )
              ]
            ),
            Option(
              name: '--password',
              description: 'User password. Must be at least 8 chars',
              args: [
                Arg(
                name: 'passwor'
              )
              ]
            ),
            Option(
              name: '--name',
              description: 'User name. Max length: 128 chars',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'getUsage',
          options: [
            Option(
              name: '--range',
              description: 'Date range',
              args: [
                Arg(
                name: 'rang'
              )
              ]
            ),
            Option(
              name: '--provider',
              description: 'Provider Name',
              args: [
                Arg(
                name: 'provide'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'get',
          description: 'Get a user by its unique ID'
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a user by its unique ID, thereby releasing it\'s ID. Since ID is released and can be reused, all user-related resources like documents or storage files should be deleted before user deletion. If you want to keep ID reserved, use the [updateStatus](/docs/server/users#usersUpdateStatus) endpoint instead'
        ),
        Subcommand(
          name: 'updateEmail',
          description: 'Update the user email by its unique ID',
          options: [
            Option(
              name: '--userId',
              description: 'User ID',
              args: [
                Arg(
                name: 'userI'
              )
              ]
            ),
            Option(
              name: '--email',
              description: 'User email',
              args: [
                Arg(
                name: 'emai'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'getLogs',
          description: 'Get the user activity logs list by its unique ID',
          options: [
            Option(
              name: '--userId',
              description: 'User ID',
              args: [
                Arg(
                name: 'userI'
              )
              ]
            ),
            Option(
              name: '--limit',
              description: 'Maximum number of logs to return in response. By default will return maximum 25 results. Maximum of 100 results allowed per request',
              args: [
                Arg(
                name: 'limi'
              )
              ]
            ),
            Option(
              name: '--offset',
              description: 'Offset value. The default value is 0. Use this value to manage pagination. [learn more about pagination](https://appwrite.io/docs/pagination)',
              args: [
                Arg(
                name: 'offse'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'getMemberships',
          description: 'Get the user membership list by its unique ID',
          options: [
            Option(
              name: '--userId',
              description: 'User ID',
              args: [
                Arg(
                name: 'userI'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'updateName',
          description: 'Update the user name by its unique ID',
          options: [
            Option(
              name: '--userId',
              description: 'User ID',
              args: [
                Arg(
                name: 'userI'
              )
              ]
            ),
            Option(
              name: '--name',
              description: 'User name. Max length: 128 chars',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'updatePassword',
          description: 'Update the user password by its unique ID',
          options: [
            Option(
              name: '--userId',
              description: 'User ID',
              args: [
                Arg(
                name: 'userI'
              )
              ]
            ),
            Option(
              name: '--password',
              description: 'New user password. Must be at least 8 chars',
              args: [
                Arg(
                name: 'passwor'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'updatePhone',
          description: 'Update the user phone by its unique ID',
          options: [
            Option(
              name: '--userId',
              description: 'User ID',
              args: [
                Arg(
                name: 'userI'
              )
              ]
            ),
            Option(
              name: '--number',
              description: 'User phone number',
              args: [
                Arg(
                name: 'numbe'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'getPrefs',
          description: 'Get the user preferences by its unique ID',
          options: [
            Option(
              name: '--userId',
              description: 'User ID',
              args: [
                Arg(
                name: 'userI'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'updatePrefs',
          description: 'Update the user preferences by its unique ID. The object you pass is stored as is, and replaces any previous value. The maximum allowed prefs size is 64kB and throws error if exceeded',
          options: [
            Option(
              name: '--userId',
              description: 'User ID',
              args: [
                Arg(
                name: 'userI'
              )
              ]
            ),
            Option(
              name: '--prefs',
              description: 'Prefs key-value JSON object',
              args: [
                Arg(
                name: 'pref'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'getSessions',
          description: 'Get the user sessions list by its unique ID',
          options: [
            Option(
              name: '--userId',
              description: 'User ID',
              args: [
                Arg(
                name: 'userI'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'deleteSessions',
          description: 'Delete all user\'s sessions by using the user\'s unique ID',
          options: [
            Option(
              name: '--userId',
              description: 'User ID',
              args: [
                Arg(
                name: 'userI'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'deleteSession',
          description: 'Delete a user sessions by its unique ID',
          options: [
            Option(
              name: '--userId',
              description: 'User ID',
              args: [
                Arg(
                name: 'userI'
              )
              ]
            ),
            Option(
              name: '--sessionId',
              description: 'Session ID',
              args: [
                Arg(
                name: 'sessionI'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'updateStatus',
          description: 'Update the user status by its unique ID. Use this endpoint as an alternative to deleting a user if you want to keep user\'s ID reserved',
          options: [
            Option(
              name: '--userId',
              description: 'User ID',
              args: [
                Arg(
                name: 'userI'
              )
              ]
            ),
            Option(
              name: '--status',
              description: 'User Status. To activate the user pass \'true\' and to block the user pass \'false\'',
              args: [
                Arg(
                name: 'statu'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'updateEmailVerification',
          description: 'Update the user email verification status by its unique ID',
          options: [
            Option(
              name: '--userId',
              description: 'User ID',
              args: [
                Arg(
                name: 'userI'
              )
              ]
            ),
            Option(
              name: '--emailVerification',
              description: 'User email verification status',
              args: [
                Arg(
                name: 'emailVerificatio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'updatePhoneVerification',
          description: 'Update the user phone verification status by its unique ID',
          options: [
            Option(
              name: '--userId',
              description: 'User ID',
              args: [
                Arg(
                name: 'userI'
              )
              ]
            ),
            Option(
              name: '--phoneVerification',
              description: 'User phone verification status',
              args: [
                Arg(
                name: 'phoneVerificatio'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'client',
      description: 'The client command allows you to configure your CLI',
      options: [
        Option(
          name: '--selfSigned',
          description: 'Configure the CLI to use a self-signed certificate ( true or false )',
          args: [
            Arg(
            name: 'valu'
          )
          ]
        ),
        Option(
          name: '--endpoint',
          description: 'Set your Apwrite server endpoint',
          args: [
            Arg(
            name: 'endpoin'
          )
          ]
        ),
        Option(
          name: '--projectId',
          description: 'Set your Apwrite project ID',
          args: [
            Arg(
            name: 'projectI'
          )
          ]
        ),
        Option(
          name: '--key',
          description: 'Set your Apwrite server\'s API key',
          args: [
            Arg(
            name: 'ke'
          )
          ]
        ),
        Option(
          name: '--debug',
          description: 'Print CLI debug information'
        ),
        Option(
          name: '--reset',
          description: 'Reset the CLI configuration'
        )
      ]
    )
  ],
  options: [
    Option(
      name: ['-v', '--version'],
      description: 'Output the version number'
    ),
    Option(
      name: '--verbose',
      description: 'Show complete error log'
    ),
    Option(
      name: '--json',
      description: 'Output in JSON format'
    ),
    Option(
      name: ['-h', '--help'],
      description: 'Display help for command',
      priority: 49,
      isPersistent: true
    )
  ]
);
