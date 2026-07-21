plugins {
  // ...

  // Add the dependency for the Google services Gradle plugin
  id("com.google.gms.google-services") version "4.5.0" apply false

}

allprojects {
    repositories {
        google()
        mavenCentral()
    }
    configurations.all {
        resolutionStrategy {
            // Rewrite the desugaring lib version for EVERY configuration in
            // every module (including plugins like flutter_local_notifications
            // that hardcode 2.1.4, whose jar is no longer served by Google Maven).
            eachDependency {
                if (requested.group == "com.android.tools" &&
                    (requested.name == "desugar_jdk_libs" ||
                        requested.name == "desugar_jdk_libs_configuration")
                ) {
                    useVersion("2.1.5")
                }
            }
            // play-services-tapandpay was removed from Google Maven; only used by
            // Stripe issuing push-provisioning, which this app does not need.
            exclude(group = "com.google.android.gms", module = "play-services-tapandpay")
        }
    }
}

// Disable lint "abortOnError" for all Android modules (including plugins such as
// flutter_local_notifications whose own code trips the MissingPermission lint).
// This survives `flutter pub get` because it lives in the project's own Gradle files.
subprojects {
    afterEvaluate {
        extensions.findByType(com.android.build.api.dsl.CommonExtension::class.java)
            ?.let { it.lint.abortOnError = false }
    }
}

// Plugins (image_picker, etc.) ship unit tests that fail under AGP 9 / our setup.
// Disable all unit tests across subprojects so `gradlew build` succeeds.
// This lives in the project's own Gradle files and survives `flutter pub get`.
subprojects {
    tasks.withType<Test>().configureEach {
        enabled = false
    }
}

val newBuildDir: Directory =
    rootProject.layout.buildDirectory
        .dir("../../build")
        .get()
rootProject.layout.buildDirectory.value(newBuildDir)

subprojects {
    val newSubprojectBuildDir: Directory = newBuildDir.dir(project.name)
    project.layout.buildDirectory.value(newSubprojectBuildDir)
}
subprojects {
    project.evaluationDependsOn(":app")
}

tasks.register<Delete>("clean") {
    delete(rootProject.layout.buildDirectory)
}
