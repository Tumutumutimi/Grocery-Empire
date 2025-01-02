10 CLS
20 PRINT "Welcome to Grocery Empire."
30 SLEEP 1
40 PRINT " You can create and manage your own Supermarket. But first"
50 INPUT "What is your Supermarket name? ",name$
60 PRINT "Wow,"; name$; " is such a great supermarket. Good luck managing your Supermarket. :)"
70 LET rating = 1
80 LET cash = 50
90 LET items = 0
100 SLEEP 1
110 DO
120 PRINT name$" have "; INT(cash); " cash and "; INT(items); " items and "; rating; "rating ."
130 IF INT(money) > 7500 AND rating = 5 THEN
140    PRINT name$; "have become the greatest Supermarket in town, now your Supermarket is managed by the manager. Bye =)"
150    BEEP
160    END
170 END IF
180 IF INT(cash) <= 0 THEN
190    PRINT "Game Over! Sorry you are out of cash. :("
200    BEEP
210    END
220 END IF
230 IF items = 0 THEN
240     INPUT "Seems like your doesn't have any item, you should buy some. How many you should buy? ", userinput
250     LET items = items + userinput
260     LET cash = cash - userinput
270     PRINT "Buying ."
280     SLEEP 1
290     PRINT "Buying .."
300     SLEEP 1
310     PRINT "Buying ..."
320     SLEEP 1
330     BEEP
340     PRINT "Great! Now you have "; INT(items); " units in items!"
350 ELSE
360     INPUT "How much items do you want to buy?", userinput
370     LET items = items + userinput
380     LET cash = cash - userinput
390     PRINT "Buying ."
400     SLEEP 1
410    PRINT "Buying .."
420    SLEEP 1
430    PRINT "Buying ..."
440     SLEEP 1
450     BEEP
460     PRINT "Great! Now you have "; INT(items); " units in items!"
470 END IF
480 LET itemsdecrease = items / 3
490 LET items = items - itemsdecrease
500 LET cash = cash + (itemsdecrease * 2.5)
510 LET cash = cash - (items / (3 + rating))
520 PRINT "Waiting for the day ."
530 SLEEP 1
540 PRINT "Waiting for the day .."
550 SLEEP 1
560 PRINT "Waiting for the day ..."
570 SLEEP 1
580 BEEP
590 PRINT INT(itemsdecrease); " items have been purchased by customer"
600 PRINT INT(items / (3+rating)); "have been used for the employee salary"
610 IF itemsdecrease > (30 * rating) AND  rating < 5 THEN
620     LET rating = rating + 1
630     PRINT "Your rating have increased to"; rating
640 END IF
650 SLEEP 1
660LOOP