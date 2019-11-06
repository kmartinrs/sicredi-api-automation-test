package apitests

import com.intuit.karate.gatling.PreDef._
import io.gatling.core.Predef._

import scala.concurrent.duration._

class KarateSimulation extends Simulation {

  val protocol = karateProtocol()
  val scn = scenario("Chegou a hora de poupar! Mas quanto? Em quanto tempo? Como posso saber?").exec(karateFeature("classpath:apitests/InvestmentSavingSimulation.feature"))

  setUp(
    scn.inject(rampUsers(10) over (20 seconds)).protocols(protocol)
  )
}