package features.reservation;

import com.intuit.karate.junit5.Karate;

public class editReservationRunner {
     @Karate.Test
    Karate testAll() {
        return Karate.run("editReservation").relativeTo(getClass());
    }
}
