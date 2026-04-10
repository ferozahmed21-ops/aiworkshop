{dsCustomerOrder.i}

var handle hServer.
var handle hProc.

hServer = session:handle.
run CustOrderServer.p on server hServer persistent set hProc.
run fillDataSets in hProc (output dataset dsCustomerOrder).
find first ttcustomer no-lock.
if available ttcustomer then
do:
    for each ttorder where ttorder.custnum = ttcustomer.custnum:
        display ttcustomer.Name ttorder.OrderNum.
    end.
end.
/* write dataset to a json file */
Dataset dsCustomerOrder:write-JSON("file","custorder.json").
