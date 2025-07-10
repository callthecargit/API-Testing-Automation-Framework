package features.reservation;

import com.intuit.karate.junit5.Karate;

public class reservationAddRunner {
    @Karate.Test
    Karate testAll() {
        return Karate.run("reservationAdd").relativeTo(getClass());
    }
}
