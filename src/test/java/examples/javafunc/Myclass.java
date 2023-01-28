package examples.javafunc;

import com.intuit.karate.http.Response;

import java.io.*;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public class Myclass {

    public static Map<String, String> body() {
        Map<String, String> m1 = new HashMap();
        m1.put("name", "walled");
        m1.put("job", "tester");
        return m1;
    }




}