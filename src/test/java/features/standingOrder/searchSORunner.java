package features.standingOrder;
import com.intuit.karate.junit5.Karate;

public class searchSORunner {
    @Karate.Test
    Karate testAll() {
        return Karate.run("searchStandingOrder").relativeTo(getClass());
    }
}
