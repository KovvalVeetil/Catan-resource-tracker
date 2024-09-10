# Catan Resource Tracker Backend

## Overview

This project is a Ruby on Rails backend for managing players and their resources in a Catan-like game. The backend allows for CRUD operations on players and their associated resources, providing endpoints to create, read, update, and delete both players and resources.


### Prerequisites
- Ruby 3.x
- Rails 7.x
- PostgreSQL or SQLite (default)

### Installation

1. **Clone the Repository**
   ```bash
   git clone <repository-url>
   cd catan_resource_tracker

Install Dependencies

```bash

bundle install
Setup the Database
```
Create and migrate the database:

```bash

rails db:create
rails db:migrate
```


```bash

rails server
By default, the server will run at http://localhost:3000.
```

API Endpoints
```
Players
List All Players
URL: /players
Method: GET
Show a Single Player
URL: /players/:id
Method: GET
URL Params: id=[integer]
Create a New Player
URL: /players
Method: POST
Data Params: { "player": { "name": "Player Name" } }
Update a Player
URL: /players/:id
Method: PATCH
Data Params: { "player": { "name": "Updated Name" } }
Delete a Player
URL: /players/:id
Method: DELETE

Resources
List All Resources for a Player
URL: /players/:player_id/resources
Method: GET
URL Params: player_id=[integer]
Show a Specific Resource
URL: /players/:player_id/resources/:id
Method: GET
URL Params: player_id=[integer], id=[integer]
Create a New Resource for a Player
URL: /players/:player_id/resources
Method: POST
Data Params: { "resource": { "resource_type": "Wood", "quantity": 5 } }
Update a Resource
URL: /players/:player_id/resources/:id
Method: PATCH
Data Params: { "resource": { "quantity": 10 } }
Delete a Resource
URL: /players/:player_id/resources/:id
Method: DELETE
```
### Testing with curl

Example Commands
Create a Player
```bash

curl -X POST http://localhost:3000/players \
     -H "Content-Type: application/json" \
     -d '{"player": {"name": "Alice"}}'
```
List All Players
```bash

curl -X GET http://localhost:3000/players
```
Create a Resource
```bash

curl -X POST http://localhost:3000/players/1/resources \
     -H "Content-Type: application/json" \
     -d '{"resource": {"resource_type": "Wood", "quantity": 5}}'
```
Update a Resource
```bash

curl -X PATCH http://localhost:3000/players/1/resources/1 \
     -H "Content-Type: application/json" \
     -d '{"resource": {"quantity": 10}}'
```
Delete a Resource
```bash

curl -X DELETE http://localhost:3000/players/1/resources/1
```
### Contributing

Fork the repository.
- Create a new branch (git checkout -b feature/your-feature).
- Commit your changes (git commit -am 'Add new feature').
- Push to the branch (git push origin feature/your-feature).
- Create a new Pull Request.
