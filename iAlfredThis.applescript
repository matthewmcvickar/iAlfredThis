-- Set your iDoneThis email address, found here: https://idonethis.com/accounts/settings/emails/
set senderEmailAddress to "YOUREMAILADDRESS"

-- iDoneThis receiving email address. You probably won't need to change this.
set recipientEmailAddress to "today@idonethis.com"

-- Don't edit below this line!
tell application "Mail"
	tell (make new outgoing message)
		set subject to "iDoneThis Single Entry for " & (date string of (current date))
		set content to "{query}"
		set sender to senderEmailAddress
		make new to recipient at end of to recipients with properties {address:recipientEmailAddress}
		send
	end tell
end tell