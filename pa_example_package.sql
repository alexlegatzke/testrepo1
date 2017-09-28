CREATE OR REPLACE PACKAGE pa_bad_code IS

PROCEDURE example1;

PROCEDURE example2;

PROCEDURE deleteme;

END;
/

CREATE OR REPLACE PACKAGE BODY pa_bad_code IS

PROCEDURE example1 IS
  dbms_output.put_line('This is a useless procedure');
END;

PROCEDURE example2 IS
  dbms_output.put_line('Still useless...');
END;

PROCEDURE deleteme IS
  --IT667788 AL, I rolled this out without testing...
  dbms_output.put_line('BROKEN CODE');
END;

END;
/