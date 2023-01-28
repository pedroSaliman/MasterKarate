package examples.delete;

import com.intuit.karate.junit5.Karate;

public class TestDeleteRunner {
    @Karate.Test
    public Karate runTest() {
        return Karate.run("delete").relativeTo(getClass());
    }
}
