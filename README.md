#  iOS DependencyGraph Tests

This project demonstrates using a `DependencyGraph` to provide dependencies and make testing easier with MVVM on iOS.

The main idea is to use extensions on the `DependencyGraph` class to provide dependencies, allowing for complex graphs.  Targets are then used to scope dependencies appropriately.

### Files to check out

Basic DependencyGraph usage

* [DependencyGraph.swift](DependencyTest/DependencyGraph.swift)
* [AppModule.swift](DependencyTest/AppModule.swift)
* [DebugApiModule.swift](DependencyTest/DebugApiModule.swift)
* [ReleaseApiModule.swift](DependencyTest/ReleaseApiModule.swift)

Unit Testing Constructor Injection 

* [MyViewModel.swift](DependencyTest/MyViewModel.swift)
* [MyViewModelTests.swift](DependencyTestTests/MyViewModelTests.swift)

Unit Testing Property Injection 

* [ViewController.swift](DependencyTest/ViewController.swift)
* [ViewControllerTests.swift](DependencyTestUITests/ViewControllerTests.swift)
