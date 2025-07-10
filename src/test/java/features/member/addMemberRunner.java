package features.member;

import com.intuit.karate.junit5.Karate;

public class addMemberRunner {
	
	@Karate.Test
	Karate testAll() {
		return Karate.run("addMember").relativeTo(getClass());
	}
}