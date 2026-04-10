/*------------------------------------------------------------------------
  File        : ItemDataset.i
  Purpose     : Dataset definition for Item entity
  Syntax      :
  Description :
  Author(s)   :
  Created     : 2026-04-10
  Notes       :
----------------------------------------------------------------------*/

/* Define temp-table for Item */
DEFINE TEMP-TABLE ttItem BEFORE-TABLE bttItem
    FIELD Itemnum        AS INTEGER   FORMAT "zzzzzzzzz9" INITIAL 0 LABEL "Item Num"
    FIELD ItemName       AS CHARACTER FORMAT "x(25)" LABEL "Item Name"
    FIELD Price          AS DECIMAL   FORMAT "->,>>>,>>9.99" INITIAL 0 LABEL "Price" DECIMALS 2
    FIELD OnHand         AS INTEGER   FORMAT "->>>>9" INITIAL 0 LABEL "On Hand"
    FIELD Allocated      AS INTEGER   FORMAT "->>>>9" INITIAL 0 LABEL "Allocated"
    FIELD ReOrder        AS INTEGER   FORMAT "->>>>9" INITIAL 0 LABEL "Re Order"
    FIELD OnOrder        AS INTEGER   FORMAT "->>>>9" INITIAL 0 LABEL "On Order"
    FIELD CatPage        AS INTEGER   FORMAT ">>9" INITIAL 0 LABEL "Cat Page"
    FIELD CatDescription AS CHARACTER FORMAT "X(200)" LABEL "Cat-Description"
    FIELD Category1      AS CHARACTER FORMAT "x(30)" LABEL "Category1"
    FIELD Category2      AS CHARACTER FORMAT "x(30)" LABEL "Category2"
    FIELD Special        AS CHARACTER FORMAT "x(8)" LABEL "Special"
    FIELD Weight         AS DECIMAL   FORMAT "->>,>>9.99" INITIAL 0 LABEL "Weight" DECIMALS 2
    FIELD Minqty         AS INTEGER   FORMAT "->>>>9" INITIAL 0 LABEL "Min Qty"
    INDEX ItemNum IS PRIMARY UNIQUE Itemnum ASCENDING.

/* Define dataset for Item */
DEFINE DATASET dsItem FOR ttItem.
