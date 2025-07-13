# The Visitor (A Behavioral Design Pattern)

The Visitor Behavioral Design Pattern allows adding new operations to a set of unrelated object types without altering their structure.

* Add new behavior to unrelared types without changing their implementation.

## Purpose
* Apply operations across unrelated objects
* Perform operations across objects that don't share a common interface
* Apply new operations to unrelated objects without changing their implementation

## Structure 
* Visitor implements a visit() operation for each type
* Each concrete Element type accepts a Visitor
* Visitor performs operations on the element's data


## Benefits
* Adds new functionality without modifying the actual types
* Can add operations by creating new visitor types
* No need to modify the Element types


## Pitfalls
* Complexity
* Limited scalability
* Tight coupling
* Adding new element types triggers changes in all visitors
