# iAlfredThis

Send finished tasks to iDoneThis using Alfred.


## Setup Instructions

1. [Download this repository.](https://github.com/matthewmcvickar/iAlfredThis/archive/master.zip)

1. Double-click the `iAlfredThis.alfredworkflow` file. When it triggers Alfred, click the **Import** button.

1. Double-click on the middle piece of the three-part workflow, the one labeled '/usr/bin/osascript Run Script'. In the window that appears, make just one adjustment:

1. Replace `YOUR_IDONETHIS_EMAIL_ADDRESS` with your email address (the exact same one with which you would respond to an iDoneThis daily checkin email).

1. Click the **Save** button.

You should be all set!


## Why AppleScript? Why Mail.app?

This workflow uses AppleScript to control Mail.app, the default email application on OS X. There are two reasons for this:

- There is not yet an iDoneThis API.
- The built-in `sendmail` command in OS X requires a manually specified outgoing SMTP server. This is also true of the system PHP installation.


If you don't use Mail.app, the AppleScript contained in the plugin can theoretically be altered to control another piece of email software that has AppleScript support.

If you don't want extra iDoneThis emails in your sent box, you'll have to delete them manually. (I'm sorry!) There are three reasons why: 1) AppleScript cannot access a specified accounts' 'Sent' mailbox; it defaults to the first *listed* account's 'Sent' mailbox, which makes it useless for anyone with multiple accounts in Mail. 2) Mail can't filter outgoing messages. 3) Gmail (and other online mail clients) can't filter outgoing messages.

It's a limited approach, but until iDoneThis releases an API, it's the only way I could get this to work with minimal setup.


## Another Option: Use the `idid` Gem

The creators of the original iAlfredThis have created [a Ruby gem called `idid`](http://devblog.springest.com/idonethis-from-the-command-line-with-the-idid-gem) which they use to send tasks to iDoneThis directly from the command line.

(I do not use this method. I don't need the functionality of the `idid` gem or team/project capabilities; I only use it for sending iDoneThis records to my personal iDoneThis account. Furthermore, configuring the gem is a slightly confusing, mostly because it requires you to manually set a mail server from which to deliver the message.)

This option merely passes through the text after your `idone` or `idid` keyword in Alfred  to the `idid` gem.

1. Install [the `idid` gem](http://devblog.springest.com/idonethis-from-the-command-line-with-the-idid-gem) and configure it.

1. [Download this repository.](https://github.com/matthewmcvickar/iAlfredThis/archive/master.zip)

1. Double-click the `iAlfredThis Via idid Gem.alfredworkflow` file. Click the **Import** button.

You should be all set. Double click on the pieces of the workflow to see how it works.


## Using Alfred 1?

Support for Alfred 1 has been removed because I can no longer test it. If you are still using Alfred 1, please see the [explanation, documentation, and installation instructions on the original iAlfredThis creator's blog](http://devblog.springest.com/alfred-app-idonethis-for-logging-your-todos-gtd-style).
