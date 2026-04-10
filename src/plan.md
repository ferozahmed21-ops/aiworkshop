# Refactoring Plan: myBusinessLogic.p

## Goal
Break `myBusinessLogic.p` (35 lines) into small internal procedures, each ≤ 10 lines.
All database access must use explicit named buffers.

## Current Logic (single block)
1. Find Customer → if not found, return error
2. Find Order for customer → if found, return error
3. Check CreditLimit > 0 → if so, return error
4. Delete all Invoices for customer, then delete Customer → return success

## Proposed Structure

### Main block (~10 lines)
- Define parameters and variables
- Call `ValidateCustomer`
- If `lOk = FALSE` then RETURN
- Call `ValidateOrders`
- If `lOk = FALSE` then RETURN
- Call `ValidateCreditLimit`
- If `lOk = FALSE` then RETURN
- Call `DeleteCustomer`

### PROCEDURE ValidateCustomer (~7 lines)
- Define buffer `bCustomer` for Customer
- FIND bCustomer by piCustNum
- If not available → set cMsg + lOk = FALSE
- Else → lOk = TRUE

### PROCEDURE ValidateOrders (~7 lines)
- Define buffer `bOrder` for Order
- FIND FIRST bOrder by piCustNum
- If available → set cMsg + lOk = FALSE
- Else → lOk = TRUE

### PROCEDURE ValidateCreditLimit (~7 lines)
- Define buffer `bCustomer` for Customer
- FIND bCustomer by piCustNum
- If CreditLimit > 0 → set cMsg + lOk = FALSE
- Else → lOk = TRUE

### PROCEDURE DeleteCustomer (~8 lines)
- Define buffer `bInvoice` for Invoice
- Define buffer `bCustomer` for Customer
- FOR EACH bInvoice WHERE bInvoice.CustNum = piCustNum → DELETE bInvoice
- FIND bCustomer by piCustNum EXCLUSIVE-LOCK
- DELETE bCustomer
- lOk = TRUE

## Notes
- Each procedure stays ≤ 10 lines
- `lOk` and `cMsg` are scoped to the main block and shared with internal procedures
- All database tables accessed via named buffers (bCustomer, bOrder, bInvoice)
