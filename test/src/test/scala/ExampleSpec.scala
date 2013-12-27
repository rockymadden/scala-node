package example

import org.specs2.mutable.SpecificationWithJUnit

final class ExampleSpec extends SpecificationWithJUnit {
	"Example helloWorld()" should {
		"return String" in {
			Example.helloWorld() must beEqualTo("Hello World!")
		}
	}
}
