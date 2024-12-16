## Event Stream app for Herd Actions

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

```bash
    curl -X POST -d "name=Rabbit1&herd_id=1" http://localhost:3000/herds/1/animals
```
<img width="1049" alt="Captura de pantalla 2024-12-16 a la(s) 12 32 27 p m" src="https://github.com/user-attachments/assets/feef728f-ca29-430e-a60a-2c4abf64b714" />


 - Sold an animal 

```bash
    curl -X PATCH http://localhost:3000/herds/1/animals/1 -d "status=sold"
```
<img width="1049" alt="Captura de pantalla 2024-12-16 a la(s) 12 29 01 p m" src="https://github.com/user-attachments/assets/85389524-4dda-4b19-bf97-76f1918328f4" />
