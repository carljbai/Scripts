strComputer = "."

Set objWMIService = GetObject("winmgmts:" _
& "{impersonationLevel=impersonate}!\\" _
& strComputer & "\root\subscription")

Set obj1 = objWMIService.ExecQuery("select * from __eventfilter where name='BVTFilter' and query='SELECT * FROM __InstanceModificationEvent WITHIN 60 WHERE TargetInstance ISA ""Win32_Processor"" AND TargetInstance.LoadPercentage > 99'")

For Each obj1elem in obj1

set obj2set = obj1elem.Associators_("__FilterToConsumerBinding")

set obj3set = obj1elem.References_("__FilterToConsumerBinding")

For each obj2 in obj2set

WScript.echo "Deleting the object"

WScript.echo obj2.GetObjectText_

obj2.Delete_

next

For each obj3 in obj3set

WScript.echo "Deleting the object"

WScript.echo obj3.GetObjectText_

obj3.Delete_

next

WScript.echo "Deleting the object"

WScript.echo obj1elem.GetObjectText_

obj1elem.Delete_

Next