
# Adding ReadyRemitSDK via Swift Package Manager

## Information
- **URL**: [https://github.com/BrightwellPayments/readyremit-sdk-ios](https://github.com/BrightwellPayments/readyremit-sdk-ios)
- **Branch Name**: 7.2

## Step-by-Step Guide - Via Package

### Using package

#### Step 1: Modify `Package.swift` File

1. Open the `Package.swift` file in your preferred text editor.
2. Modify the `Package.swift` file to include the ReadyRemit SDK dependency:
   ```swift
   // swift-tools-version:5.3
   import PackageDescription

   let package = Package(
       name: "MySwiftProject",
       platforms: [
           .iOS(.v13)
       ],
       dependencies: [
           .package(
               url: "https://github.com/BrightwellPayments/readyremit-sdk-ios",
               .branch("7.2")
           )
       ],
       targets: [
           .target(
               name: "MySwiftProject",
               dependencies: [
                   .product(name: "ReadyRemitSDK", package: "readyremit-sdk-ios")
               ]
           ),
           .testTarget(
               name: "MySwiftProjectTests",
               dependencies: ["MySwiftProject"]
           ),
       ]
   )
   ```

#### Step 2: Resolve Dependencies

1. In Terminal, navigate to your project directory if you aren't already there:
   ```bash
   cd MySwiftProject
   ```
2. Resolve the dependencies by running:
   ```bash
   swift package update
   ```
   
### Using XCode

#### Step 1: Open Your Project in Xcode

1. Launch Xcode.
2. Open your existing project or create a new one.

#### Step 2: Add Swift Package Dependency

1. In Xcode's top menu, go to `File` > `Add Packages...`.
2. A dialog will appear, prompting you to add a package. In the search bar at the top of this dialog, enter the URL of the repository:
   ```
   https://github.com/BrightwellPayments/readyremit-sdk-ios
   ```

#### Step 3: Specify Version and Branch

1. In the next dialog, you can choose the dependency rule:
   - Select `Branch` from the options.
   - Enter `7.2` as the branch name.
2. Click `Add Package`.

#### Step 4: Add the Package to Your Targets

1. Xcode will ask you to confirm which targets to add the package to. Make sure the correct targets are selected (usually your main app target).
2. Click `Add Package`.

### Import the Library in Your Code

1. Open any Swift file where you need to use the library.
2. Import the package at the top of the file:
   ```swift
   import ReadyRemitSDK
   ```

3. You can now use the ReadyRemit SDK in your project.

### Next steps 

You can see how to configure ReadyRemitSDK on our [documentation](https://developer.readyremit.com/docs/ios)
