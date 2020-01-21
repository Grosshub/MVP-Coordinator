# MVP-Coordinator

This iOS project is a demonstration for MVP and Coordinator pattern concepts

### Architecture

##### Source
* `Flows` - contains a coordinators to navigate through the app scenes 
* `View` - delegates user interaction events and life cycle calls to the Presenter and displays data passed by the `Presenter`. All `UIViewController`, `UIView` subclasses belong to the `View` layer
* `Presenter` - contains the presentation logic and tells the `View` what to present. It should be a plain `Swift` class and not reference any `iOS` framework classes.

## Authors
* **Alexey Gross** - [alexey.gross][AG]

[AG]: https://github.com/grosshub
