# iAlfredThis

Send finished tasks to iDoneThis using Alfred.

## For Alfred 1

If you are still using Alfred 1, please see the [explanation, documentation, and installation instructions on the original iAlfredThis creator's blog](http://devblog.springest.com/alfred-app-idonethis-for-logging-your-todos-gtd-style).

## For Alfred 2

The original iAlfredThis doesn't work out of the box with Alfred 2 because of the new Workflow architecture.

The creators of the original iAlfredThis have created [a Ruby gem called `idid`](http://devblog.springest.com/idonethis-from-the-command-line-with-the-idid-gem) which they use to send tasks to iDoneThis directly from the command line.

So: you can use that gem (with or without Alfred) or use an adaptation of the old PHP method (without the gem).

### Option A: Use the Gem

This option merely passes through the text after your `idone` or `idid` keyword in Alfred  to the `idid` gem.

1. Install [the `idid` gem](http://devblog.springest.com/idonethis-from-the-command-line-with-the-idid-gem) and configure it.

1. [Download this repository.](https://github.com/matthewmcvickar/iAlfredThis/archive/master.zip)

1. Double-click the `iAlfredThis Via idid Gem.alfredworkflow` file inside the `For Alfred 2` folder. Click the **Import** button.

You should be all set. Double click on the pieces of the workflow to see how it works.

### Option B: Use a Bit of PHP

This option uses the PHP `mail` command (taken from the original iAlfredThis) triggered directly from Alfred's 'Run Script' workflow action. It requires you to input your iDoneThis email address for it to work correctly.

1. [Download this repository.](https://github.com/matthewmcvickar/iAlfredThis/archive/master.zip)

1. Double-click the `iAlfredThis.alfredworkflow` file inside the `For Alfred 2` folder. Click the **Import** button.

1. Double-click on the middle piece of the three-part workflow, the one labeled '/usr/bin/php [script icon] Run Script'. In the window that appears, make two adjustments:

1. Set your time zone so that the system's PHP installation doesn't complain and refuse to run the script. Replace `YOUR_TIME_ZONE` with the timezone matching your city--see the [full list here](http://www.php.net/manual/en/timezones.php).
  - For quick reference, America's time zones:

      EST: `America/New York`  
      CDT: `America/Chicago`  
      MDT: `America/Boise`  
      MST: `America/Phoenix`  
      PDT: `America/Los_Angeles`  
      AKDT: `America/Juneau`  
      HST: `Pacific/Honolulu`
 
1. Replace `YOUR_IDONETHIS_EMAIL_ADDRESS` with your iDoneThis email address (the exact same one with which  you would respond to an iDoneThis daily checkin email).

1. Click the **Save** button.

You should be all set!

I prefer this method myself because I don't need the functionality of the `idid` gem or team/project capabilities; I only use it for sending iDoneThis records to my personal iDoneThis account. (Furthermore, configuring the gem is a slightly confusing, mostly because it requires you to manually set a mail server from which to deliver the message.)
