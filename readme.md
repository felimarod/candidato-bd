# Candidatos BackEnd

Correr el contenedor con Go y Beego
```bash
docker run -d \
    --name beego-2 \
    --volume "C:\Users\andre\OneDrive\Escritorio\BD\Taller Interfaz\BACKEND":/go/src/github.com/felimarod/candidato-bd \
    --network host \
    grupoglud/beego
```

```bash
docker exec -it beego bash
```

```bash
docker run -d \
    --name beego-2 \
    --volume "C:\Users\andre\OneDrive\Escritorio\BD\Taller Interfaz\BACKEND":/go/src/github.com/felimarod/candidato-bd \
    --network=host \
    grupoglud/beego
```

```bash
docker exec -it beego bash
```