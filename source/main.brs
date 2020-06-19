'********** Copyright 2015 Roku Corp.  All Rights Reserved. **********

sub Main()
screen = CreateObject("roSGScreen")
m.port = CreateObject("roMessagePort")
screen.setMessagePort(m.port)
scene = screen.createScene("search_screen")
screen.Show()

done = 0
content = [
        "Slunce seno a par facek"
        "Dedictvi aneb ..."
        "Sakali leta"
        "Rolling Stones"
        "Baldurs Gate III"
        "Magic the Gathering"
        "Star Wars"
        "Lord of The rings"
        ]
while done = 0
	msg = wait(0, screen.GetMessagePort())
	if msgType = "roSGScreenEvent"
		if msg.isFullResult()
			for each item in content
				if item = msg.isFullResult()
				print "Hey! I have found what you looked for: "; msg.GetMessage()
				done = 1
				else
				print "Sorry nothing in our DB"
				end if
			end for
			
		endif
	else 
		msg.isScreenClosed()
		print "closing screen"
	endif
endwhile
end sub
