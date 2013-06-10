# iAlfredThis

Send finished tasks to iDoneThis using Alfred.

## For Alfred 1

If you are still using Alfred 1, please see the [explanation, documentation, and installation instructions on the original iAlfredThis creator's blog](http://devblog.springest.com/alfred-app-idonethis-for-logging-your-todos-gtd-style).

## For Alfred 2

The original iAlfredThis doesn't work out of the box with Alfred 2 because of the new Workflow architecture.

### Setup Instructions

This workflow uses the PHP `mail` command (taken from the original iAlfredThis) triggered directly from Alfred's 'Run Script' workflow action. It requires you to input your email address and timezone for it to work correctly.

1. [Download this repository.](https://github.com/matthewmcvickar/iAlfredThis/archive/master.zip)

1. Double-click the `iAlfredThis.alfredworkflow` file inside the `For Alfred 2` folder. Click the **Import** button.

1. Double-click on the middle piece of the three-part workflow, the one labeled '/usr/bin/php [script icon] Run Script'. In the window that appears, make two adjustments:

1. Set your timezone so that the system's PHP installation doesn't complain and refuse to run the script. Replace `YOUR_TIME_ZONE` with the timezone matching your city--see the [full list here](http://www.php.net/manual/en/timezones.php).
  - For quick reference, America's time zones (you want to copy and paste the `Region/City` string, not the timezone abbreviation):

      Eastern: `America/New_York`  
      Central: `America/Chicago`  
      Mountain Daylight: `America/Boise`  
      Mountain Standard: `America/Phoenix`  
      Pacific: `America/Los_Angeles`  
      Alaska: `America/Juneau`  
      Hawaii: `Pacific/Honolulu`
 
1. Replace `YOUR_IDONETHIS_EMAIL_ADDRESS` with your email address (the exact same one with which you would respond to an iDoneThis daily checkin email).

1. Click the **Save** button.

You should be all set!

---

### Another Option: Use the Gem

The creators of the original iAlfredThis have created [a Ruby gem called `idid`](http://devblog.springest.com/idonethis-from-the-command-line-with-the-idid-gem) which they use to send tasks to iDoneThis directly from the command line.

(I do not use this method. I don't need the functionality of the `idid` gem or team/project capabilities; I only use it for sending iDoneThis records to my personal iDoneThis account. Furthermore, configuring the gem is a slightly confusing, mostly because it requires you to manually set a mail server from which to deliver the message.)

This option merely passes through the text after your `idone` or `idid` keyword in Alfred  to the `idid` gem.

1. Install [the `idid` gem](http://devblog.springest.com/idonethis-from-the-command-line-with-the-idid-gem) and configure it.

1. [Download this repository.](https://github.com/matthewmcvickar/iAlfredThis/archive/master.zip)

1. Double-click the `iAlfredThis Via idid Gem.alfredworkflow` file inside the `For Alfred 2` folder. Click the **Import** button.

You should be all set. Double click on the pieces of the workflow to see how it works.