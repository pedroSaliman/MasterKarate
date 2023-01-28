package examples.put;

import com.intuit.karate.junit5.Karate;

public class TestPutRunner {

    @Karate.Test
    public Karate runTest() {
        return Karate.run("put").relativeTo(getClass());
    }
}
