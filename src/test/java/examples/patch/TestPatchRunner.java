package examples.patch;

import com.intuit.karate.junit5.Karate;

public class TestPatchRunner {
    @Karate.Test
    public Karate runTest() {
        return Karate.run("patch").relativeTo(getClass());
    }
}
