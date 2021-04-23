# genshin-build
Monorepo for website about building genshin character

## To run it locally

1. `docker-compose up`
2. `docker exec -it genshin-build_api_1 bundle exec rake db:create`
3. `docker exec -it genshin-build_api_1 bundle exec rake db:migrate`
4. `docker exec -it genshin-build_api_1 bundle exec rake db:seed` (run this only when first time)

## Development

### API
1. Change the api config `database.yml` to your local database e.g.
```ruby
host: localhost
port: 3036
```
2. `cd api`
3. `bundle install` (install bundler if needed)
4. `bundle exec rake db:create`
5. `bundle exec rake db:migrate`
6. `bundle exec rake db:seed` (run this only when first time)
7. `bundle exec puma config.ru`

## Endpoints

1. `/graphql` POST, query example:
```ruby
{ "query": '{ weapons { name weaponType } }' }

or

{ "query": '{ artifacts { name artifactType } }' }
```
2. `/artifacts` GET
3. `/weapons` GET

### Current Database Architecture
![image](https://user-images.githubusercontent.com/24479555/115822247-68e1a000-a42e-11eb-891b-35c11d7c49f2.png)
