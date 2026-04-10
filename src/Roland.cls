/*------------------------------------------------------------------------
  File        : Roland.cls
  Purpose     :
  Syntax      :
  Description :
  Author(s)   :
  Created     : 2026-04-10
  Notes       :
----------------------------------------------------------------------*/

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS Roland IMPLEMENTS Car USE-WIDGET-POOL:

    DEFINE PUBLIC PROPERTY Brand AS CHARACTER NO-UNDO
        GET.

    CONSTRUCTOR PUBLIC Roland():
    END CONSTRUCTOR.

END CLASS.
