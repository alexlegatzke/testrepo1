CREATE OR REPLACE PACKAGE pa_bad_code IS

PROCEDURE example1;

PROCEDURE example2;

END;
/

CREATE OR REPLACE PACKAGE BODY pa_bad_code IS

PROCEDURE example1 IS
  dbms_output.put_line('This is a useless procedure');
END;

PROCEDURE example2 IS
  dbms_output.put_line('Still useless...');
END;

END;
/