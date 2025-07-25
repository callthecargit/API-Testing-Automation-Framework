package features.standingOrder;
import com.intuit.karate.junit5.Karate;

public class CreateStandingOrderRunner {
    @Karate.Test
    Karate testAll() {
        return Karate.run("createStandingOrder").relativeTo(getClass());
    }
}
