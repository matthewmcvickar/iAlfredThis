# iAlfredThis

Send finished tasks to iDoneThis throughout the day using Alfred.

[Explanation, documentation, and installation instructions on the creator's blog.](http://devblog.springest.com/alfred-app-idonethis-for-logging-your-todos-gtd-style)

**The code in this repository is for Alfred 1 and will not work with Alfred 2 without adjustments.**

## For Alfred 2

This doesn't work as-is with Alfred 2 because of the new Workflow architecture. But it does work with some minor adjustments. In addition, the creators of the original iAlfredThis have created [a Ruby gem called `idid`](http://devblog.springest.com/idonethis-from-the-command-line-with-the-idid-gem) which they use to send tasks to iDoneThis directly from the command line. You can use that or use an adaptation of the old PHP method.

In either case, I have written [instructions for getting iAlfredThis to work with Alfred 2](https://github.com/wouter-de-boer/iAlfredThis/issues/3) in the comments on an Issue in the original iAlfredThis repository, but am including them here in full, just in case Wouter de Boer decides to delete his repository or someone stumbles upon this first.

---

Wouter de Vos and the Springest team made [a new version](http://devblog.springest.com/idonethis-from-the-command-line-with-the-idid-gem) of their iDoneThis utility as a gem that works on the command line. [The gem is on GitHub](https://github.com/foxycoder/idid) as well.

So you have two options:

### Use the Gem

Install [the `idid` gem](http://devblog.springest.com/idonethis-from-the-command-line-with-the-idid-gem), configure it, and make a Alfred 2 workflow that just sends your 'idid' or 'idone' Alfred query through to the command line, like in this screenshot:
  
  ![Screen Shot 2013-04-25 at 9 18 03pm](https://f.cloud.github.com/assets/200641/429444/5ec3dfc2-ae44-11e2-8936-248a48dd81c9.PNG)

  Now you can call up Alfred, type `idid foo bar baz` and the text after `idid` will be sent through the gem.

### Use A Bit of PHP

The simpler option is to copy over the basic PHP code from the old iAlfredThis into the new Alfred 2 workflow system. Just set up a workflow that runs a PHP script like this when you invoke the `idid` (or `idone`) keyword:
  
  ![Screen Shot 2013-04-25 at 9 39 27pm](https://f.cloud.github.com/assets/200641/429461/533914d2-ae45-11e2-82dd-45842abd95b2.PNG)

  The PHP code you need is:
  ```
  $to = 'today@idonethis.com';
  $subject = 'Re: Personal digest for ' . date("F d");
  $message = {query};
  $headers = "From: YOUR_IDONETHIS_EMAIL_ADDRESS \r\n";

  mail($to, $subject, $message, $headers);
  ```
  The only thing you need to customize there is the email address, which should be the exact same as the one with which  you'd respond to an iDoneThis daily checkin email.

  (I chose this method myself because I don't need the functionality of the `idid` gem or team/project capabilities; I only use it for sending iDoneThis records to my personal iDoneThis account.)
