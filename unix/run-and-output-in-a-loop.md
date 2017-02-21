Runs a script in a loop and outputs

``` shell

for i in {1..50} ; do
    echo =============================
    echo "Number $i: $(date +%Y-%m-%d-%H:%M:%S)"
    ( time ( rpsec test_me.rb ) ) 2>&1 | sed 's/^/   /'
done | tee timing.log

```
