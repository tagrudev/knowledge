We need a shell that remains running so that screen does not terminate.
 
``` shell
screen -dmS new_screen sh
```

This will create a screen and won't attach it, so we need to reconnect

``` shell
screen -r new_screen
```

Then you can execute commands in the screen. Once you're done you can detach using

``` shell
Ctr-a d
```

Just exit from the screen to terminate 
