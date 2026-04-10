DEFINE VARIABLE oRepository     AS CustomerRepository NO-UNDO.
DEFINE VARIABLE iTotalOrderLines AS INTEGER           NO-UNDO.
DEFINE VARIABLE iCustNum         AS INTEGER           NO-UNDO.
DEFINE BUFFER bCustomer FOR Customer.

oRepository = CAST(Factory:createObject("Customer"), CustomerRepository).

FOR EACH bCustomer NO-LOCK:
    iTotalOrderLines = oRepository:GetTotalOrderLinesForCustomer(bCustomer.CustNum).
    MESSAGE "Customer: " + bCustomer.Name + " (CustNum: " + STRING(bCustomer.CustNum) + ")"
            + " - Total OrderLines: " + STRING(iTotalOrderLines)
    VIEW-AS ALERT-BOX.
END.
