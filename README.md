# README

This is a demo to demostration to steps to create different version of api in Rails 5 app.

### Ruby version

* ruby-2.2.3
* rails-5.0.2

How to create a api app in rails
======

``` shell
rails new example_api --api # create a api application

rails g scaffold todo title completed:boolean order:integer # generate todo scaffold
```

Steps to create version 1(v1)
======

* First you should change `config/routes.rb`.Add a new namespace(v1).
``` ruby
  Rails.application.routes.draw do
    concern :api_base do
      resources :todos
    end

    namespace :v1 do
      concerns :api_base
    end
  end
```

* Then refactoring the application.We’ll need to move and update source files to reflect the namespacing we just defined in the routes file.

⋅⋅⋅Create a new v1/ subfolders under app/controllers, app/serializers, test/controllers, and test/serializers

⋅⋅⋅Move the source files to be versioned under the new subfolders using mv or git mv.

⋅⋅⋅Namespace the affected classes. Ex: TodosController becomes V1::TodosController.