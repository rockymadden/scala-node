import sbt._
import Keys._

object CoreBuild extends Build {
  lazy val root = Project("root", file("."),
    settings = Defaults.defaultSettings ++ Seq(
      scalaVersion := "2.11.1"
    )
  ) aggregate(test)

  lazy val test: Project = Project("test", file("test"),
    settings = Defaults.defaultSettings ++ Seq(
      name := "scala-node-test",
      version := "0.2.0",
      scalaVersion := "2.11.1",
      libraryDependencies ++= Seq("org.specs2" %% "specs2" % "2.3.12" % "test")
    )
  ) dependsOn(main % "compile")

  lazy val main: Project = Project("main", file("main"), delegates = root :: Nil,
    settings = Defaults.defaultSettings ++ Seq(
      name := "scala-node-main",
      version := "0.2.0",
      scalaVersion := "2.11.1"
    )
  )
}
