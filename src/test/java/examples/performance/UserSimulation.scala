package examples.performance

import com.intuit.karate.gatling.PreDef._
import io.gatling.core.Predef._
import scala.concurrent.duration._

class UserSimulation extends Simulation{
val getuser=scenario("Get The user").exec(karateFeature("classpath:examples/performance/getRequest.feature"));

  setUp(
    getuser.inject(rampUsers(10).during(5))
  )
}
