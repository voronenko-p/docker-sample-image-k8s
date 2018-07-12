For the first time

```
make deploy
```

for subsequent...

```
make apply 
```


Debugging access - requires running `kubectl proxy` in background...

Launch kubernetes dashboard from url `http://localhost:8001/api/v1/namespaces/kube-system/services/http:kubernetes-dashboard:/proxy/#!/overview?namespace=default` if you have installed one

```
make dashboard
```

Launch deploymed micro service `http://localhost:8001/api/v1/namespaces/default/services/http:croc-hunter:/proxy/`

```
make hunter
```





