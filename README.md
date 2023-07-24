# MRE for rascal-maven-plugin issue

Including `util::LanguageServer` causes an error when trying to compile.


| rascal | rascal-maven-plugin | result |
| ------ | ------------------- | ------ |
| 0.33.0 | 0.16.0 | error (Message.rsc)|
| 0.28.0 | 0.16.0 | error (Message.rsc)|
| 0.28.4 | 0.16.0 | error (Message.rsc)|
| 0.28.0 | 0.14.5 | error (Message.rsc)|
| 0.28.0 | 0.8.2 | error (List.rsc) |
| 0.28.3 | 0.8.2 | error (List.rsc) |

For the case using rascal-maven-plugin `0.8.2` the compilation goal `tutor` had to be removed.

## Reproducing

```sh
mvn clean compile -e
```

results in an error:


```sh
[INFO] Error stacktraces are turned on.
[INFO] Scanning for projects...
[INFO] 
[INFO] --------------------< org.rascalmpl:corel-language >--------------------
[INFO] Building corel-language 0.1.0-SNAPSHOT
[INFO]   from pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[WARNING] Parameter 'license' is unknown for plugin 'rascal-maven-plugin:0.16.0:tutor (tutor-compile)'
[WARNING] Parameter 'sources' is unknown for plugin 'rascal-maven-plugin:0.16.0:tutor (tutor-compile)'
[WARNING] Parameter 'issues' is unknown for plugin 'rascal-maven-plugin:0.16.0:tutor (tutor-compile)'
[INFO] 
[INFO] --- clean:3.2.0:clean (default-clean) @ corel-language ---
[INFO] Deleting /Users/auke/rascal-maven-plugin-issue-mre/target
[INFO] 
[INFO] --- resources:3.3.0:resources (default-resources) @ corel-language ---
[INFO] Copying 1 resource
[INFO] Copying 2 resources
[INFO] 
[INFO] --- compiler:3.8.0:compile (default-compile) @ corel-language ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- rascal:0.16.0:compile (compile) @ corel-language ---
INFO: detected |lib://rascal| at |jar+file:///Users/auke/.m2/repository/org/rascalmpl/rascal/0.28.2/rascal-0.28.2.jar!/|
INFO: detected |lib://rascal-tutor| at |jar+file:///Users/auke/.m2/repository/org/rascalmpl/rascal-tutor/0.8.0/rascal-tutor-0.8.0.jar!/|
INFO: detected |lib://typepal| at |jar+file:///Users/auke/.m2/repository/org/rascalmpl/typepal/0.7.6/typepal-0.7.6.jar!/|
INFO: detected |lib://rascal-core| at |jar+file:///Users/auke/.m2/repository/org/rascalmpl/rascal-core/0.7.6/rascal-core-0.7.6.jar!/|
[INFO] configuring paths
[INFO] 	registered source location: |file:///Users/auke/rascal-maven-plugin-issue-mre/src/main/rascal/|
[INFO] checking if any files need compilation
[INFO] stale source files have been found:
[INFO] 	|file:///Users/auke/rascal-maven-plugin-issue-mre/src/main/rascal/MreTest.rsc|
INFO: resolved |lib://rascal| at |jar+file:///Users/auke/.m2/repository/org/rascalmpl/rascal/0.28.2/rascal-0.28.2.jar!/|
[INFO] 	registered library location: |lib://rascal|
[INFO] 	registered library location: |jar+file:///Users/auke/.m2/repository/org/rascalmpl/rascal-lsp/2.13.4/rascal-lsp-2.13.4.jar!/|
[INFO] 	registered library location: |jar+file:///Users/auke/.m2/repository/org/rascalmpl/rascal-core/0.7.8/rascal-core-0.7.8.jar!/|
[INFO] 	registered library location: |jar+file:///Users/auke/.m2/repository/org/rascalmpl/typepal/0.7.8/typepal-0.7.8.jar!/|
[INFO] paths have been configured
[INFO] Running checker in single threaded mode
[INFO] start loading the compiler
[INFO] 	rascal module path addition: |lib://typepal|
[INFO] 	rascal module path addition: |lib://rascal-core|
[INFO] 	rascal module path addition: |std:///|
[INFO] 	importing lang::rascalcore::check::Checker
INFO: resolved |lib://typepal| at |jar+file:///Users/auke/.m2/repository/org/rascalmpl/typepal/0.7.6/typepal-0.7.6.jar!/|
INFO: resolved |lib://rascal-core| at |jar+file:///Users/auke/.m2/repository/org/rascalmpl/rascal-core/0.7.6/rascal-core-0.7.6.jar!/|
[INFO] done loading the compiler
=== check: [|file:///Users/auke/rascal-maven-plugin-issue-mre/src/main/rascal/MreTest.rsc|]
pathConfig(
  ignores=[],
  javaCompilerPath=[],
  bin=|file:///Users/auke/rascal-maven-plugin-issue-mre/target/classes/|,
  classloaders=[],
  libs=[
    |lib://rascal|,
    |jar+file:///Users/auke/.m2/repository/org/rascalmpl/rascal-lsp/2.13.4/rascal-lsp-2.13.4.jar!/|,
    |jar+file:///Users/auke/.m2/repository/org/rascalmpl/rascal-core/0.7.8/rascal-core-0.7.8.jar!/|,
    |jar+file:///Users/auke/.m2/repository/org/rascalmpl/typepal/0.7.8/typepal-0.7.8.jar!/|
  ],
  srcs=[|file:///Users/auke/rascal-maven-plugin-issue-mre/src/main/rascal/|])
getTPLReadLoc: DOES NOT EXIST: |file:///Users/auke/rascal-maven-plugin-issue-mre/target/classes/rascal/MreTest.tpl|
getTPLReadLoc: DOES NOT EXIST: |lib://rascal/rascal/MreTest.tpl|
getTPLReadLoc: DOES NOT EXIST: |jar+file:///Users/auke/.m2/repository/org/rascalmpl/rascal-lsp/2.13.4/rascal-lsp-2.13.4.jar!/rascal/MreTest.tpl|
getTPLReadLoc: DOES NOT EXIST: |jar+file:///Users/auke/.m2/repository/org/rascalmpl/rascal-core/0.7.8/rascal-core-0.7.8.jar!/rascal/MreTest.tpl|
getTPLReadLoc: DOES NOT EXIST: |jar+file:///Users/auke/.m2/repository/org/rascalmpl/typepal/0.7.8/typepal-0.7.8.jar!/rascal/MreTest.tpl|
getTPLReadLoc: DOES NOT EXIST: |file:///Users/auke/rascal-maven-plugin-issue-mre/target/classes/rascal/util/LanguageServer.tpl|
getTPLReadLoc: DOES NOT EXIST: |lib://rascal/rascal/util/LanguageServer.tpl|
getTPLReadLoc: util::LanguageServer => |jar+file:///Users/auke/.m2/repository/org/rascalmpl/rascal-lsp/2.13.4/rascal-lsp-2.13.4.jar!/rascal/util/LanguageServer.tpl|
getTPLReadLoc: DOES NOT EXIST: |file:///Users/auke/rascal-maven-plugin-issue-mre/target/classes/rascal/Message.tpl|
getTPLReadLoc: Message => |lib://rascal/rascal/Message.tpl|
getTPLReadLoc: DOES NOT EXIST: |file:///Users/auke/rascal-maven-plugin-issue-mre/target/classes/rascal/ParseTree.tpl|
getTPLReadLoc: ParseTree => |lib://rascal/rascal/ParseTree.tpl|
getTPLReadLoc: DOES NOT EXIST: |file:///Users/auke/rascal-maven-plugin-issue-mre/target/classes/rascal/Type.tpl|
getTPLReadLoc: Type => |lib://rascal/rascal/Type.tpl|
getTPLReadLoc: DOES NOT EXIST: |file:///Users/auke/rascal-maven-plugin-issue-mre/target/classes/rascal/List.tpl|
getTPLReadLoc: List => |lib://rascal/rascal/List.tpl|
getTPLReadLoc: DOES NOT EXIST: |file:///Users/auke/rascal-maven-plugin-issue-mre/target/classes/rascal/IO.tpl|
getTPLReadLoc: IO => |lib://rascal/rascal/IO.tpl|
getTPLReadLoc: DOES NOT EXIST: |file:///Users/auke/rascal-maven-plugin-issue-mre/target/classes/rascal/Exception.tpl|
getTPLReadLoc: Exception => |lib://rascal/rascal/Exception.tpl|
getTPLReadLoc: DOES NOT EXIST: |file:///Users/auke/rascal-maven-plugin-issue-mre/target/classes/rascal/Map.tpl|
getTPLReadLoc: Map => |lib://rascal/rascal/Map.tpl|
getTPLReadLoc: DOES NOT EXIST: |file:///Users/auke/rascal-maven-plugin-issue-mre/target/classes/rascal/util/Reflective.tpl|
getTPLReadLoc: util::Reflective => |lib://rascal/rascal/util/Reflective.tpl|
getTPLReadLoc: DOES NOT EXIST: |file:///Users/auke/rascal-maven-plugin-issue-mre/target/classes/rascal/lang/manifest/IO.tpl|
getTPLReadLoc: lang::manifest::IO => |lib://rascal/rascal/lang/manifest/IO.tpl|
getTPLReadLoc: DOES NOT EXIST: |file:///Users/auke/rascal-maven-plugin-issue-mre/target/classes/rascal/String.tpl|
getTPLReadLoc: String => |lib://rascal/rascal/String.tpl|
getTPLReadLoc: DOES NOT EXIST: |file:///Users/auke/rascal-maven-plugin-issue-mre/target/classes/rascal/lang/rascal/syntax/Rascal.tpl|
getTPLReadLoc: lang::rascal::syntax::Rascal => |lib://rascal/rascal/lang/rascal/syntax/Rascal.tpl|
[ERROR] |std:///util/Reflective.rsc|(6596,2,<170,84>,<170,86>): |std:///util/Reflective.rsc|:170,84: "No module name found for |std:///Message.rsc|(0,1125,\<1,0\>,\<28,5\>);\nsrcs=[|file:///Users/auke/rascal-maven-plugin-issue-mre/src/main/rascal/|];\nlibs=[|lib://rascal|,|jar+file:///Users/auke/.m2/repository/org/rascalmpl/rascal-lsp/2.13.4/rascal-lsp-2.13.4.jar!/|,|jar+file:///Users/auke/.m2/repository/org/rascalmpl/rascal-core/0.7.8/rascal-core-0.7.8.jar!/|,|jar+file:///Users/auke/.m2/repository/org/rascalmpl/typepal/0.7.8/typepal-0.7.8.jar!/|]"
[ERROR] 	at getModuleName(|std:///util/Reflective.rsc|(5247,1354,<136,0>,<171,1>))
	at getModuleName(|lib://rascal-core/lang/rascalcore/check/Import.rsc|(3179,64,<87,11>,<87,75>))
	at complete(|lib://rascal-core/lang/rascalcore/check/Import.rsc|(5757,126,<130,18>,<130,144>))
	at getImportAndExtendGraph(|lib://rascal-core/lang/rascalcore/check/Import.rsc|(6022,154,<135,11>,<135,165>))
	at rascalTModelForLocs(|lib://rascal-core/lang/rascalcore/check/Checker.rsc|(9845,7581,<209,8>,<362,5>))
	at check(|lib://rascal-core/lang/rascalcore/check/Checker.rsc|(21387,97,<464,38>,<464,135>))
	at ***MVN Rascal Compiler***(|main://***MVN%20Rascal%20Compiler***|)

[INFO] ------------------------------------------------------------------------
[INFO] BUILD FAILURE
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  25.916 s
[INFO] Finished at: 2023-07-24T13:09:44+02:00
[INFO] ------------------------------------------------------------------------
[WARNING] 
[WARNING] Plugin validation issues were detected in 3 plugin(s)
[WARNING] 
[WARNING]  * org.apache.maven.plugins:maven-compiler-plugin:3.8.0
[WARNING]  * org.apache.maven.plugins:maven-resources-plugin:3.3.0
[WARNING]  * org.rascalmpl:rascal-maven-plugin:0.16.0
[WARNING] 
[WARNING] For more or less details, use 'maven.plugin.validation' property with one of the values (case insensitive): [BRIEF, DEFAULT, VERBOSE]
[WARNING] 
[ERROR] Failed to execute goal org.rascalmpl:rascal-maven-plugin:0.16.0:compile (compile) on project corel-language: unexpected error during Rascal compiler run: |std:///util/Reflective.rsc|:170,84: "No module name found for |std:///Message.rsc|(0,1125,\<1,0\>,\<28,5\>);\nsrcs=[|file:///Users/auke/rascal-maven-plugin-issue-mre/src/main/rascal/|];\nlibs=[|lib://rascal|,|jar+file:///Users/auke/.m2/repository/org/rascalmpl/rascal-lsp/2.13.4/rascal-lsp-2.13.4.jar!/|,|jar+file:///Users/auke/.m2/repository/org/rascalmpl/rascal-core/0.7.8/rascal-core-0.7.8.jar!/|,|jar+file:///Users/auke/.m2/repository/org/rascalmpl/typepal/0.7.8/typepal-0.7.8.jar!/|]" -> [Help 1]
org.apache.maven.lifecycle.LifecycleExecutionException: Failed to execute goal org.rascalmpl:rascal-maven-plugin:0.16.0:compile (compile) on project corel-language: unexpected error during Rascal compiler run
    at org.apache.maven.lifecycle.internal.MojoExecutor.doExecute2 (MojoExecutor.java:347)
    at org.apache.maven.lifecycle.internal.MojoExecutor.doExecute (MojoExecutor.java:330)
    at org.apache.maven.lifecycle.internal.MojoExecutor.execute (MojoExecutor.java:213)
    at org.apache.maven.lifecycle.internal.MojoExecutor.execute (MojoExecutor.java:175)
    at org.apache.maven.lifecycle.internal.MojoExecutor.access$000 (MojoExecutor.java:76)
    at org.apache.maven.lifecycle.internal.MojoExecutor$1.run (MojoExecutor.java:163)
    at org.apache.maven.plugin.DefaultMojosExecutionStrategy.execute (DefaultMojosExecutionStrategy.java:39)
    at org.apache.maven.lifecycle.internal.MojoExecutor.execute (MojoExecutor.java:160)
    at org.apache.maven.lifecycle.internal.LifecycleModuleBuilder.buildProject (LifecycleModuleBuilder.java:105)
    at org.apache.maven.lifecycle.internal.LifecycleModuleBuilder.buildProject (LifecycleModuleBuilder.java:73)
    at org.apache.maven.lifecycle.internal.builder.singlethreaded.SingleThreadedBuilder.build (SingleThreadedBuilder.java:53)
    at org.apache.maven.lifecycle.internal.LifecycleStarter.execute (LifecycleStarter.java:118)
    at org.apache.maven.DefaultMaven.doExecute (DefaultMaven.java:261)
    at org.apache.maven.DefaultMaven.doExecute (DefaultMaven.java:173)
    at org.apache.maven.DefaultMaven.execute (DefaultMaven.java:101)
    at org.apache.maven.cli.MavenCli.execute (MavenCli.java:910)
    at org.apache.maven.cli.MavenCli.doMain (MavenCli.java:283)
    at org.apache.maven.cli.MavenCli.main (MavenCli.java:206)
    at jdk.internal.reflect.DirectMethodHandleAccessor.invoke (DirectMethodHandleAccessor.java:104)
    at java.lang.reflect.Method.invoke (Method.java:578)
    at org.codehaus.plexus.classworlds.launcher.Launcher.launchEnhanced (Launcher.java:283)
    at org.codehaus.plexus.classworlds.launcher.Launcher.launch (Launcher.java:226)
    at org.codehaus.plexus.classworlds.launcher.Launcher.mainWithExitCode (Launcher.java:407)
    at org.codehaus.plexus.classworlds.launcher.Launcher.main (Launcher.java:348)
Caused by: org.apache.maven.plugin.MojoExecutionException: unexpected error during Rascal compiler run
    at org.rascalmpl.maven.CompileRascalMojo.execute (CompileRascalMojo.java:199)
    at org.apache.maven.plugin.DefaultBuildPluginManager.executeMojo (DefaultBuildPluginManager.java:126)
    at org.apache.maven.lifecycle.internal.MojoExecutor.doExecute2 (MojoExecutor.java:342)
    at org.apache.maven.lifecycle.internal.MojoExecutor.doExecute (MojoExecutor.java:330)
    at org.apache.maven.lifecycle.internal.MojoExecutor.execute (MojoExecutor.java:213)
    at org.apache.maven.lifecycle.internal.MojoExecutor.execute (MojoExecutor.java:175)
    at org.apache.maven.lifecycle.internal.MojoExecutor.access$000 (MojoExecutor.java:76)
    at org.apache.maven.lifecycle.internal.MojoExecutor$1.run (MojoExecutor.java:163)
    at org.apache.maven.plugin.DefaultMojosExecutionStrategy.execute (DefaultMojosExecutionStrategy.java:39)
    at org.apache.maven.lifecycle.internal.MojoExecutor.execute (MojoExecutor.java:160)
    at org.apache.maven.lifecycle.internal.LifecycleModuleBuilder.buildProject (LifecycleModuleBuilder.java:105)
    at org.apache.maven.lifecycle.internal.LifecycleModuleBuilder.buildProject (LifecycleModuleBuilder.java:73)
    at org.apache.maven.lifecycle.internal.builder.singlethreaded.SingleThreadedBuilder.build (SingleThreadedBuilder.java:53)
    at org.apache.maven.lifecycle.internal.LifecycleStarter.execute (LifecycleStarter.java:118)
    at org.apache.maven.DefaultMaven.doExecute (DefaultMaven.java:261)
    at org.apache.maven.DefaultMaven.doExecute (DefaultMaven.java:173)
    at org.apache.maven.DefaultMaven.execute (DefaultMaven.java:101)
    at org.apache.maven.cli.MavenCli.execute (MavenCli.java:910)
    at org.apache.maven.cli.MavenCli.doMain (MavenCli.java:283)
    at org.apache.maven.cli.MavenCli.main (MavenCli.java:206)
    at jdk.internal.reflect.DirectMethodHandleAccessor.invoke (DirectMethodHandleAccessor.java:104)
    at java.lang.reflect.Method.invoke (Method.java:578)
    at org.codehaus.plexus.classworlds.launcher.Launcher.launchEnhanced (Launcher.java:283)
    at org.codehaus.plexus.classworlds.launcher.Launcher.launch (Launcher.java:226)
    at org.codehaus.plexus.classworlds.launcher.Launcher.mainWithExitCode (Launcher.java:407)
    at org.codehaus.plexus.classworlds.launcher.Launcher.main (Launcher.java:348)
Caused by: org.rascalmpl.exceptions.Throw: |std:///util/Reflective.rsc|:170,84: "No module name found for |std:///Message.rsc|(0,1125,\<1,0\>,\<28,5\>);\nsrcs=[|file:///Users/auke/rascal-maven-plugin-issue-mre/src/main/rascal/|];\nlibs=[|lib://rascal|,|jar+file:///Users/auke/.m2/repository/org/rascalmpl/rascal-lsp/2.13.4/rascal-lsp-2.13.4.jar!/|,|jar+file:///Users/auke/.m2/repository/org/rascalmpl/rascal-core/0.7.8/rascal-core-0.7.8.jar!/|,|jar+file:///Users/auke/.m2/repository/org/rascalmpl/typepal/0.7.8/typepal-0.7.8.jar!/|]"
    at org.rascalmpl.interpreter.control_exceptions.ControlException.reallyFillInStackTrace (ControlException.java:42)
    at org.rascalmpl.exceptions.Throw.fillInStackTrace (Throw.java:139)
    at java.lang.Throwable.<init> (Throwable.java:273)
    at java.lang.Exception.<init> (Exception.java:67)
    at java.lang.RuntimeException.<init> (RuntimeException.java:63)
    at org.rascalmpl.interpreter.control_exceptions.ControlException.<init> (ControlException.java:25)
    at org.rascalmpl.exceptions.Throw.<init> (Throw.java:52)
    at org.rascalmpl.semantics.dynamic.Statement$Throw.interpret (Statement.java:918)
    at org.rascalmpl.interpreter.result.RascalFunction.runBody (RascalFunction.java:385)
    at org.rascalmpl.interpreter.result.RascalFunction.call (RascalFunction.java:326)
    at org.rascalmpl.interpreter.result.OverloadedFunction.callWith (OverloadedFunction.java:409)
    at org.rascalmpl.interpreter.result.OverloadedFunction.call (OverloadedFunction.java:369)
    at org.rascalmpl.semantics.dynamic.Expression$CallOrTree.interpret (Expression.java:540)
    at org.rascalmpl.semantics.dynamic.Expression$IfThenElse.interpret (Expression.java:1242)
    at org.rascalmpl.semantics.dynamic.Statement$Expression.interpret (Statement.java:365)
    at org.rascalmpl.semantics.dynamic.Statement$Return.interpret (Statement.java:782)
    at org.rascalmpl.interpreter.result.RascalFunction.runBody (RascalFunction.java:385)
    at org.rascalmpl.interpreter.result.RascalFunction.call (RascalFunction.java:326)
    at org.rascalmpl.interpreter.result.OverloadedFunction.callWith (OverloadedFunction.java:409)
    at org.rascalmpl.interpreter.result.OverloadedFunction.call (OverloadedFunction.java:369)
    at org.rascalmpl.semantics.dynamic.Expression$CallOrTree.interpret (Expression.java:540)
    at org.rascalmpl.semantics.dynamic.Expression$Tuple.interpret (Expression.java:2776)
    at org.rascalmpl.semantics.dynamic.SetComprehensionWriter.append (SetComprehensionWriter.java:36)
    at org.rascalmpl.semantics.dynamic.Comprehension.evalComprehension (Comprehension.java:95)
    at org.rascalmpl.semantics.dynamic.Comprehension$Set.interpret (Comprehension.java:71)
    at org.rascalmpl.semantics.dynamic.Expression$Comprehension.interpret (Expression.java:681)
    at org.rascalmpl.semantics.dynamic.Statement$Expression.interpret (Statement.java:365)
    at org.rascalmpl.semantics.dynamic.Statement$Assignment.interpret (Statement.java:205)
    at org.rascalmpl.interpreter.result.RascalFunction.runBody (RascalFunction.java:385)
    at org.rascalmpl.interpreter.result.RascalFunction.call (RascalFunction.java:326)
    at org.rascalmpl.semantics.dynamic.Expression$CallOrTree.interpret (Expression.java:540)
    at org.rascalmpl.semantics.dynamic.Statement$Expression.interpret (Statement.java:365)
    at org.rascalmpl.semantics.dynamic.Statement$Return.interpret (Statement.java:782)
    at org.rascalmpl.interpreter.result.RascalFunction.runBody (RascalFunction.java:385)
    at org.rascalmpl.interpreter.result.RascalFunction.call (RascalFunction.java:326)
    at org.rascalmpl.interpreter.result.OverloadedFunction.callWith (OverloadedFunction.java:409)
    at org.rascalmpl.interpreter.result.OverloadedFunction.call (OverloadedFunction.java:369)
    at org.rascalmpl.semantics.dynamic.Expression$CallOrTree.interpret (Expression.java:540)
    at org.rascalmpl.semantics.dynamic.Declarator$Default.interpret (Declarator.java:52)
    at org.rascalmpl.semantics.dynamic.LocalVariableDeclaration$Default.interpret (LocalVariableDeclaration.java:36)
    at org.rascalmpl.semantics.dynamic.Statement$VariableDeclaration.interpret (Statement.java:1003)
    at org.rascalmpl.semantics.dynamic.Statement$NonEmptyBlock.interpret (Statement.java:759)
    at org.rascalmpl.semantics.dynamic.Statement$Try.evalStatementTry (Statement.java:939)
    at org.rascalmpl.semantics.dynamic.Statement$Try.interpret (Statement.java:932)
    at org.rascalmpl.interpreter.result.RascalFunction.runBody (RascalFunction.java:385)
    at org.rascalmpl.interpreter.result.RascalFunction.call (RascalFunction.java:326)
    at org.rascalmpl.semantics.dynamic.Expression$CallOrTree.interpret (Expression.java:540)
    at org.rascalmpl.semantics.dynamic.Statement$Expression.interpret (Statement.java:365)
    at org.rascalmpl.semantics.dynamic.Statement$Assignment.interpret (Statement.java:205)
    at org.rascalmpl.interpreter.result.RascalFunction.runBody (RascalFunction.java:385)
    at org.rascalmpl.interpreter.result.RascalFunction.call (RascalFunction.java:326)
    at org.rascalmpl.interpreter.result.AbstractFunction.call (AbstractFunction.java:200)
    at org.rascalmpl.interpreter.Evaluator.call (Evaluator.java:743)
    at org.rascalmpl.interpreter.Evaluator.call (Evaluator.java:726)
    at org.rascalmpl.interpreter.Evaluator.call (Evaluator.java:532)
    at org.rascalmpl.interpreter.Evaluator.call (Evaluator.java:489)
    at org.rascalmpl.maven.CompileRascalMojo.runCheckerSingle (CompileRascalMojo.java:408)
    at org.rascalmpl.maven.CompileRascalMojo.runChecker (CompileRascalMojo.java:273)
    at org.rascalmpl.maven.CompileRascalMojo.execute (CompileRascalMojo.java:182)
    at org.apache.maven.plugin.DefaultBuildPluginManager.executeMojo (DefaultBuildPluginManager.java:126)
    at org.apache.maven.lifecycle.internal.MojoExecutor.doExecute2 (MojoExecutor.java:342)
    at org.apache.maven.lifecycle.internal.MojoExecutor.doExecute (MojoExecutor.java:330)
    at org.apache.maven.lifecycle.internal.MojoExecutor.execute (MojoExecutor.java:213)
    at org.apache.maven.lifecycle.internal.MojoExecutor.execute (MojoExecutor.java:175)
    at org.apache.maven.lifecycle.internal.MojoExecutor.access$000 (MojoExecutor.java:76)
    at org.apache.maven.lifecycle.internal.MojoExecutor$1.run (MojoExecutor.java:163)
    at org.apache.maven.plugin.DefaultMojosExecutionStrategy.execute (DefaultMojosExecutionStrategy.java:39)
    at org.apache.maven.lifecycle.internal.MojoExecutor.execute (MojoExecutor.java:160)
    at org.apache.maven.lifecycle.internal.LifecycleModuleBuilder.buildProject (LifecycleModuleBuilder.java:105)
    at org.apache.maven.lifecycle.internal.LifecycleModuleBuilder.buildProject (LifecycleModuleBuilder.java:73)
    at org.apache.maven.lifecycle.internal.builder.singlethreaded.SingleThreadedBuilder.build (SingleThreadedBuilder.java:53)
    at org.apache.maven.lifecycle.internal.LifecycleStarter.execute (LifecycleStarter.java:118)
    at org.apache.maven.DefaultMaven.doExecute (DefaultMaven.java:261)
    at org.apache.maven.DefaultMaven.doExecute (DefaultMaven.java:173)
    at org.apache.maven.DefaultMaven.execute (DefaultMaven.java:101)
    at org.apache.maven.cli.MavenCli.execute (MavenCli.java:910)
    at org.apache.maven.cli.MavenCli.doMain (MavenCli.java:283)
    at org.apache.maven.cli.MavenCli.main (MavenCli.java:206)
    at jdk.internal.reflect.DirectMethodHandleAccessor.invoke (DirectMethodHandleAccessor.java:104)
    at java.lang.reflect.Method.invoke (Method.java:578)
    at org.codehaus.plexus.classworlds.launcher.Launcher.launchEnhanced (Launcher.java:283)
    at org.codehaus.plexus.classworlds.launcher.Launcher.launch (Launcher.java:226)
    at org.codehaus.plexus.classworlds.launcher.Launcher.mainWithExitCode (Launcher.java:407)
    at org.codehaus.plexus.classworlds.launcher.Launcher.main (Launcher.java:348)
[ERROR] 
[ERROR] Re-run Maven using the -X switch to enable full debug logging.
[ERROR] 
[ERROR] For more information about the errors and possible solutions, please read the following articles:
[ERROR] [Help 1] http://cwiki.apache.org/confluence/display/MAVEN/MojoExecutionException
```
