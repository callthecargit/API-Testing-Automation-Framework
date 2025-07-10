package features.reservation;

import com.intuit.karate.junit5.Karate;

public class reservationSearchRunner {
    @Karate.Test
    Karate testAll() {
        return Karate.run("reservationSearch").relativeTo(getClass());
    }
}
