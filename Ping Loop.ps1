#initial val
$x = [int]1
$i = "192.168.1."
$c = ""
$h = [string]$x

for ()
{
    $h = [string]$x
    $c = $i + $h
    echo $c
    echo $x
    echo " "
    echo " "

    ping -n 1 -w 15 $c

    if ($x.Equals(22)) 
    {
    echo "end"
    break;
    }
    $x = $x + 1
}