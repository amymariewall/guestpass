
# GuestPass Introduction

Simple solution to create fully functional preview access for guest users in Rails apps

Allow guests to use index, show, and edit views of all resources (models)

###Define Problem

There should be a simple way for guests users to preview all functionality within an application without having to create a new User object and entire collections of associated objects.

For example, a guest user should be able to preview dashboard pages within a storefront application that shows recent orders associated with a user, the account details associated with that user, etc.

Queries for the associated order and account instances for a guest user will return nil, which will be problematic.

###Solution

Instead of adding conditionals to check whether the associated objects exist for the user on every page, instead return a "null" implementation that responds to the same interface as the model object would.

The "null" implementation will return useful data that allow guest users to preview the application.


##Implementation


Consider modifying ActiveRecord so model attributes are extracted into a module that extends to both instances of that model AND the nullobject counterpart Class of that model.

Update - This is a thing, probably use this: (http://apidock.com/rails/Module/mattr_reader)

Or consider how the nullobjects could inherit all attribute methods some other way.

Concepts: 

Polymorphism
- Inheritance/Subclassing
- Ducktyping
- Generic programming


##Project Goals

Guest users should be able to login and preview all pages of a simple Rails application.


Sources:

[Handling Associations on Null Objects](https://robots.thoughtbot.com/handling-associations-on-null-objects)

[Rails Refactoring Example: Introduce Null Object] (https://robots.thoughtbot.com/rails-refactoring-example-introduce-null-object)

[Null Object Design Pattern] (http://www.cs.oberlin.edu/~jwalker/nullObjPattern/)

[Devise Guests] (https://github.com/cbeer/devise-guests)

