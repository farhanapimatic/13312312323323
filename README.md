# Getting started

This is a sample server Petstore server.  You can find out more about Swagger at [http://swagger.io](http://swagger.io) or on [irc.freenode.net, #swagger](http://swagger.io/irc/).  For this sample, you can use the api key `special-key` to test the authorization filters.

## How to Build

This client library is a Ruby gem which can be compiled and used in your Ruby and Ruby on Rails project. This library requires a few gems from the RubyGems repository.

1. Open the command line interface or the terminal and navigate to the folder containing the source code.
2. Run ``` gem build swagger_petstore.gemspec ``` to build the gem.
3. Once built, the gem can be installed on the current work environment using ``` gem install swagger_petstore-1.0.0.gem ```

![Building Gem](https://apidocs.io/illustration/ruby?step=buildSDK&workspaceFolder=Swagger%20Petstore-Ruby&workspaceName=Swagger%20Petstore-Ruby&projectName=swagger_petstore&gemName=swagger_petstore&gemVer=1.0.0)

## How to Use

The following section explains how to use the SwaggerPetstore Ruby Gem in a new Rails project using RubyMine&trade;. The basic workflow presented here is also applicable if you prefer using a different editor or IDE.

### 1. Starting a new project

Close any existing projects in RubyMine&trade; by selecting ``` File -> Close Project ```. Next, click on ``` Create New Project ``` to create a new project from scratch.

![Create a new project in RubyMine](https://apidocs.io/illustration/ruby?step=createNewProject0&workspaceFolder=Swagger%20Petstore-Ruby&workspaceName=SwaggerPetstore&projectName=swagger_petstore&gemName=swagger_petstore&gemVer=1.0.0)

Next, provide ``` TestApp ``` as the project name, choose ``` Rails Application ``` as the project type, and click ``` OK ```.

![Create a new Rails Application in RubyMine - step 1](https://apidocs.io/illustration/ruby?step=createNewProject1&workspaceFolder=Swagger%20Petstore-Ruby&workspaceName=SwaggerPetstore&projectName=swagger_petstore&gemName=swagger_petstore&gemVer=1.0.0)

In the next dialog make sure that correct *Ruby SDK* is being used (minimum 2.0.0) and click ``` OK ```.

![Create a new Rails Application in RubyMine - step 2](https://apidocs.io/illustration/ruby?step=createNewProject2&workspaceFolder=Swagger%20Petstore-Ruby&workspaceName=SwaggerPetstore&projectName=swagger_petstore&gemName=swagger_petstore&gemVer=1.0.0)

This will create a new Rails Application project with an existing set of files and folder.

### 2. Add reference of the gem

In order to use the SwaggerPetstore gem in the new project we must add a gem reference. Locate the ```Gemfile``` in the *Project Explorer* window under the ``` TestApp ``` project node. The file contains references to all gems being used in the project. Here, add the reference to the library gem by adding the following line: ``` gem 'swagger_petstore', '~> 1.0.0' ```

![Add references of the Gemfile](https://apidocs.io/illustration/ruby?step=addReference&workspaceFolder=Swagger%20Petstore-Ruby&workspaceName=SwaggerPetstore&projectName=swagger_petstore&gemName=swagger_petstore&gemVer=1.0.0)

### 3. Adding a new Rails Controller

Once the ``` TestApp ``` project is created, a folder named ``` controllers ``` will be visible in the *Project Explorer* under the following path: ``` TestApp > app > controllers ```. Right click on this folder and select ``` New -> Run Rails Generator... ```.

![Run Rails Generator on Controllers Folder](https://apidocs.io/illustration/ruby?step=addCode0&workspaceFolder=Swagger%20Petstore-Ruby&workspaceName=SwaggerPetstore&projectName=swagger_petstore&gemName=swagger_petstore&gemVer=1.0.0)

Selecting the said option will popup a small window where the generator names are displayed. Here, select the ``` controller ``` template.

![Create a new Controller](https://apidocs.io/illustration/ruby?step=addCode1&workspaceFolder=Swagger%20Petstore-Ruby&workspaceName=SwaggerPetstore&projectName=swagger_petstore&gemName=swagger_petstore&gemVer=1.0.0)

Next, a popup window will ask you for a Controller name and included Actions. For controller name provide ``` Hello ``` and include an action named ``` Index ``` and click ``` OK ```.

![Add a new Controller](https://apidocs.io/illustration/ruby?step=addCode2&workspaceFolder=Swagger%20Petstore-Ruby&workspaceName=SwaggerPetstore&projectName=swagger_petstore&gemName=swagger_petstore&gemVer=1.0.0)

A new controller class anmed ``` HelloController ``` will be created in a file named ``` hello_controller.rb ``` containing a method named ``` Index ```. In this method, add code for initialization and a sample for its usage.

![Initialize the library](https://apidocs.io/illustration/ruby?step=addCode3&workspaceFolder=Swagger%20Petstore-Ruby&workspaceName=SwaggerPetstore&projectName=swagger_petstore&gemName=swagger_petstore&gemVer=1.0.0)

## How to Test

You can test the generated SDK and the server with automatically generated test
cases as follows:

  1. From terminal/cmd navigate to the root directory of the SDK.
  2. Invoke: `bundle exec rake`

## Initialization

### Authentication
In order to setup authentication and initialization of the API client, you need the following information.

| Parameter | Description |
|-----------|-------------|
| o_auth_client_id | OAuth 2 Client ID |
| o_auth_redirect_uri | OAuth 2 Redirection endpoint or Callback Uri |



API client can be initialized as following.

```ruby
# Configuration parameters and credentials
o_auth_client_id = 'o_auth_client_id' # OAuth 2 Client ID
o_auth_redirect_uri = 'o_auth_redirect_uri' # OAuth 2 Redirection endpoint or Callback Uri

client = SwaggerPetstore::SwaggerPetstoreClient.new(
  o_auth_client_id: o_auth_client_id,
  o_auth_redirect_uri: o_auth_redirect_uri
)
```

The added initlization code can be debugged by putting a breakpoint in the ``` Index ``` method and running the project in debug mode by selecting ``` Run -> Debug 'Development: TestApp' ```.

![Debug the TestApp](https://apidocs.io/illustration/ruby?step=addCode4&workspaceFolder=Swagger%20Petstore-Ruby&workspaceName=SwaggerPetstore&projectName=swagger_petstore&gemName=swagger_petstore&gemVer=1.0.0&initLine=client%2520%253D%2520SwaggerPetstoreClient.new%2528%2527o_auth_client_id%2527%252C%2520%2527o_auth_redirect_uri%2527%2529)



# Class Reference

## <a name="list_of_controllers"></a>List of Controllers

* [PetController](#pet_controller)
* [StoreController](#store_controller)
* [UserController](#user_controller)

## <a name="pet_controller"></a>![Class: ](https://apidocs.io/img/class.png ".PetController") PetController

### Get singleton instance

The singleton instance of the ``` PetController ``` class can be accessed from the API Client.

```ruby
pet_controller = client.pet
```

### <a name="add_pet"></a>![Method: ](https://apidocs.io/img/method.png ".PetController.add_pet") add_pet

> Add a new pet to the store


```ruby
def add_pet(body); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Required ```  | Pet object that needs to be added to the store |


#### Example Usage

```ruby
body = Pet.new

pet_controller.add_pet(body)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 405 | Invalid input |



### <a name="update_pet"></a>![Method: ](https://apidocs.io/img/method.png ".PetController.update_pet") update_pet

> Update an existing pet


```ruby
def update_pet(body); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Required ```  | Pet object that needs to be added to the store |


#### Example Usage

```ruby
body = Pet.new

pet_controller.update_pet(body)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Invalid ID supplied |
| 404 | Pet not found |
| 405 | Validation exception |



### <a name="find_pets_by_status"></a>![Method: ](https://apidocs.io/img/method.png ".PetController.find_pets_by_status") find_pets_by_status

> Multiple status values can be provided with comma separated strings


```ruby
def find_pets_by_status(status); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| status |  ``` Required ```  ``` Collection ```  | Status values that need to be considered for filter |


#### Example Usage

```ruby
status = [SwaggerPetstore::Status2Enum::AVAILABLE]

result = pet_controller.find_pets_by_status(status)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Invalid status value |



### <a name="find_pets_by_tags"></a>![Method: ](https://apidocs.io/img/method.png ".PetController.find_pets_by_tags") find_pets_by_tags

> Muliple tags can be provided with comma separated strings. Use tag1, tag2, tag3 for testing.


```ruby
def find_pets_by_tags(tags); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| tags |  ``` Required ```  ``` Collection ```  | Tags to filter by |


#### Example Usage

```ruby
tags = ['tags']

result = pet_controller.find_pets_by_tags(tags)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Invalid tag value |



### <a name="get_pet_by_id"></a>![Method: ](https://apidocs.io/img/method.png ".PetController.get_pet_by_id") get_pet_by_id

> Returns a single pet


```ruby
def get_pet_by_id(pet_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| pet_id |  ``` Required ```  | ID of pet to return |


#### Example Usage

```ruby
pet_id = 64

result = pet_controller.get_pet_by_id(pet_id)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Invalid ID supplied |
| 404 | Pet not found |



### <a name="update_pet_with_form"></a>![Method: ](https://apidocs.io/img/method.png ".PetController.update_pet_with_form") update_pet_with_form

> Updates a pet in the store with form data


```ruby
def update_pet_with_form(pet_id,
                             name = nil,
                             status = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| pet_id |  ``` Required ```  | ID of pet that needs to be updated |
| name |  ``` Optional ```  | Updated name of the pet |
| status |  ``` Optional ```  | Updated status of the pet |


#### Example Usage

```ruby
pet_id = 64
name = 'name'
status = 'status'

pet_controller.update_pet_with_form(pet_id, name, status)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 405 | Invalid input |



### <a name="delete_pet"></a>![Method: ](https://apidocs.io/img/method.png ".PetController.delete_pet") delete_pet

> Deletes a pet


```ruby
def delete_pet(pet_id,
                   api_key = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| pet_id |  ``` Required ```  | Pet id to delete |
| api_key |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
pet_id = 64
api_key = 'api_key'

pet_controller.delete_pet(pet_id, api_key)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Invalid ID supplied |
| 404 | Pet not found |



### <a name="upload_file"></a>![Method: ](https://apidocs.io/img/method.png ".PetController.upload_file") upload_file

> uploads an image


```ruby
def upload_file(pet_id,
                    additional_metadata = nil,
                    file = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| pet_id |  ``` Required ```  | ID of pet to update |
| additional_metadata |  ``` Optional ```  | Additional data to pass to server |
| file |  ``` Optional ```  | file to upload |


#### Example Usage

```ruby
pet_id = 64
additional_metadata = 'additionalMetadata'
file = Faraday::UploadIO.new('PathToFile', 'application/octet-stream')

result = pet_controller.upload_file(pet_id, additional_metadata, file)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="store_controller"></a>![Class: ](https://apidocs.io/img/class.png ".StoreController") StoreController

### Get singleton instance

The singleton instance of the ``` StoreController ``` class can be accessed from the API Client.

```ruby
store_controller = client.store
```

### <a name="get_inventory"></a>![Method: ](https://apidocs.io/img/method.png ".StoreController.get_inventory") get_inventory

> Returns a map of status codes to quantities


```ruby
def get_inventory; end
```

#### Example Usage

```ruby

result = store_controller.get_inventory()

```


### <a name="create_place_order"></a>![Method: ](https://apidocs.io/img/method.png ".StoreController.create_place_order") create_place_order

> Place an order for a pet


```ruby
def create_place_order(body); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Required ```  | order placed for purchasing the pet |


#### Example Usage

```ruby
body = Order.new

result = store_controller.create_place_order(body)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Invalid Order |



### <a name="get_order_by_id"></a>![Method: ](https://apidocs.io/img/method.png ".StoreController.get_order_by_id") get_order_by_id

> For valid response try integer IDs with value >= 1 and <= 10. Other values will generated exceptions


```ruby
def get_order_by_id(order_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| order_id |  ``` Required ```  | ID of pet that needs to be fetched |


#### Example Usage

```ruby
order_id = 64

result = store_controller.get_order_by_id(order_id)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Invalid ID supplied |
| 404 | Order not found |



### <a name="delete_order"></a>![Method: ](https://apidocs.io/img/method.png ".StoreController.delete_order") delete_order

> For valid response try integer IDs with positive integer value. Negative or non-integer values will generate API errors


```ruby
def delete_order(order_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| order_id |  ``` Required ```  | ID of the order that needs to be deleted |


#### Example Usage

```ruby
order_id = 64

store_controller.delete_order(order_id)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Invalid ID supplied |
| 404 | Order not found |



[Back to List of Controllers](#list_of_controllers)

## <a name="user_controller"></a>![Class: ](https://apidocs.io/img/class.png ".UserController") UserController

### Get singleton instance

The singleton instance of the ``` UserController ``` class can be accessed from the API Client.

```ruby
user_controller = client.user
```

### <a name="create_user"></a>![Method: ](https://apidocs.io/img/method.png ".UserController.create_user") create_user

> This can only be done by the logged in user.


```ruby
def create_user(body); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Required ```  | Created user object |


#### Example Usage

```ruby
body = User.new

user_controller.create_user(body)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 0 | successful operation |



### <a name="create_users_with_array_input"></a>![Method: ](https://apidocs.io/img/method.png ".UserController.create_users_with_array_input") create_users_with_array_input

> Creates list of users with given input array


```ruby
def create_users_with_array_input(body); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Required ```  ``` Collection ```  | List of user object |


#### Example Usage

```ruby
body = [User.new]

user_controller.create_users_with_array_input(body)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 0 | successful operation |



### <a name="create_users_with_list_input"></a>![Method: ](https://apidocs.io/img/method.png ".UserController.create_users_with_list_input") create_users_with_list_input

> Creates list of users with given input array


```ruby
def create_users_with_list_input(body); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Required ```  ``` Collection ```  | List of user object |


#### Example Usage

```ruby
body = [User.new]

user_controller.create_users_with_list_input(body)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 0 | successful operation |



### <a name="get_login_user"></a>![Method: ](https://apidocs.io/img/method.png ".UserController.get_login_user") get_login_user

> Logs user into the system


```ruby
def get_login_user(username,
                       password); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| username |  ``` Required ```  | The user name for login |
| password |  ``` Required ```  | The password for login in clear text |


#### Example Usage

```ruby
username = 'username'
password = 'password'

result = user_controller.get_login_user(username, password)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Invalid username/password supplied |



### <a name="get_logout_user"></a>![Method: ](https://apidocs.io/img/method.png ".UserController.get_logout_user") get_logout_user

> Logs out current logged in user session


```ruby
def get_logout_user; end
```

#### Example Usage

```ruby

user_controller.get_logout_user()

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 0 | successful operation |



### <a name="get_user_by_name"></a>![Method: ](https://apidocs.io/img/method.png ".UserController.get_user_by_name") get_user_by_name

> Get user by user name


```ruby
def get_user_by_name(username); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| username |  ``` Required ```  | The name that needs to be fetched. Use user1 for testing. |


#### Example Usage

```ruby
username = 'username'

result = user_controller.get_user_by_name(username)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Invalid username supplied |
| 404 | User not found |



### <a name="update_user"></a>![Method: ](https://apidocs.io/img/method.png ".UserController.update_user") update_user

> This can only be done by the logged in user.


```ruby
def update_user(username,
                    body); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| username |  ``` Required ```  | name that need to be updated |
| body |  ``` Required ```  | Updated user object |


#### Example Usage

```ruby
username = 'username'
body = User.new

user_controller.update_user(username, body)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Invalid user supplied |
| 404 | User not found |



### <a name="delete_user"></a>![Method: ](https://apidocs.io/img/method.png ".UserController.delete_user") delete_user

> This can only be done by the logged in user.


```ruby
def delete_user(username); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| username |  ``` Required ```  | The name that needs to be deleted |


#### Example Usage

```ruby
username = 'username'

user_controller.delete_user(username)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Invalid username supplied |
| 404 | User not found |



[Back to List of Controllers](#list_of_controllers)



