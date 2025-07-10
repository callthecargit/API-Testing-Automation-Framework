package features.member;

import com.intuit.karate.junit5.Karate;

public class searchMemberRunner {
    
    @Karate.Test
    Karate testAll() {
        return Karate.run("searchMember").relativeTo(getClass());
    }
}