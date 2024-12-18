# Event Stream app for Herd Actions

## Notion site with the report: https://autumn-sidecar-877.notion.site/Exercise-Event-Stream-for-Herd-Actions-15ef0183ba1580608e64fe6728e277e2

## Live demo deployed into Fly.io: https://truherddemo-dark-brook-348.fly.dev/


- Rails version 8.0.1 
- Ruby version 3.3.4


# 1. Pre-requisites
In order to run locally you must install **Docker** and **Devcontainers**
- **Docker** https://www.docker.com/
- **Devcontainers** https://github.com/devcontainers/cli 


    Using NPM:
    ```bash
      npm install -g @devcontainers/cli or with NPX:  npx install -g @devcontainers/cli 
    ```
    using NPX:
    ```bash
      npx install -g @devcontainers/cli 
    ```   

# 2. Build the container:


```bash
bin/build_container
```

# 3. Run the seeds

```bash
bin/rails db:seed
```


# 4. Run the container in a local enviroment:

```bash
bin/dev
```

# 5. Use:

Go to http://localhost:3000/ to see the dashboard 

To add or sold an animal:
 
 - Add an animal 

In local host 
```bash
    curl -X POST -d "name=Rabbit1&herd_id=1" http://localhost:3000/herds/1/animals
```

To the live demo:
```bash
    curl -X POST -d "name=Rabbit1&herd_id=1" http://truherddemo-dark-brook-348.fly.dev/herds/1/animals
```
<img width="1049" alt="Captura de pantalla 2024-12-16 a la(s) 12 32 27 p m" src="https://github.com/user-attachments/assets/feef728f-ca29-430e-a60a-2c4abf64b714" />


 - Sold an animal 

```bash
    curl -X PATCH http://localhost:3000/herds/1/animals/1 -d "status=sold"
```

To the live demo:
```bash
    curl -X PATCH http://truherddemo-dark-brook-348.fly.dev/herds/1/animals/1 -d "status=sold"
```


<img width="1049" alt="Captura de pantalla 2024-12-16 a la(s) 12 29 01 p m" src="https://github.com/user-attachments/assets/85389524-4dda-4b19-bf97-76f1918328f4" />
