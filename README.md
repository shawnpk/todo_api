# Todos API

- Rails Version: 6.0.3.2
- Ruby Version: 2.7.1

[Rails API](https://guides.rubyonrails.org/api_app.html) with [JWT](https://jwt.io/) for authentication.

## Models
**User:** _name, email, password_digest_  
**Todo:** _title, created_by_  
**Item:** _name, done_

## Endpoints
**Signup:** _/signup_

**Todo #index:** _/todos_  
**Todo #show:** _/todos/#{todo_id}_  
**Todo #create:** _/todos_  
**Todo #destroy:** _/todos/#{todo_id}_  

**Item #index:** _/todos/#{todo_id}/items_  
**Item #show:** _/todos/#{todo_id}/items/#{id}_  
**Item #create:** _/todos/#{todo_id}/items_  
**Item #destroy:** _/todos/#{todo_id}/items/#{id}_

##### (all queries must include a valid [JWT](https://jwt.io/) token passed in the 'Authorization' header to succeed)

### Todo
- Add versioning
- Add serialization ([fast_jsonapi](https://github.com/Netflix/fast_jsonapi) or [active_model_serializers](https://github.com/rails-api/active_model_serializers))
- Add pagination ([pagy](https://github.com/ddnexus/pagy), [kaminari](https://github.com/kaminari/kaminari) or [will_paginate](https://github.com/mislav/will_paginate/tree/v3.3.0))
