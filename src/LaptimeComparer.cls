CLASS LaptimeComparer IMPLEMENTS Progress.Collections.IComparer<F1Car>:

    METHOD PUBLIC INTEGER Compare(objCar1 AS F1Car, objCar2 AS F1Car):
        IF objCar1:Laptime < objCar2:Laptime THEN
            RETURN -1.
        ELSE IF objCar1:Laptime > objCar2:Laptime THEN
            RETURN 1.
        ELSE
            RETURN 0.
    END METHOD.

END CLASS.
