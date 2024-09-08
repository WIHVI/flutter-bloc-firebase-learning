# Infinite List

In this tutorial, we’re going to be implementing an app which fetches data over the network and loads it as a user scrolls using Flutter and the bloc library.

## Key Topics
 - Observe state changes with BlocObserver.
 - BlocProvider, Flutter widget which provides a bloc to its children.
 - BlocBuilder, Flutter widget that handles building the widget in response to new states.
 - Adding events with context.read.
 - Prevent unnecessary rebuilds with Equatable.
 - Use the transformEvents method with Rx.

 ## Project Structure
 The application uses a feature-driven directory structure. This project structure enables us to scale the project by having self-contained features. In this example we will only have a single feature (the post feature) and it’s split up into respective folders with barrel files.