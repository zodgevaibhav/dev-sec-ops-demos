1. Create POD using commandline
    kubectl run api-gateway --image=dnyanyog.org/api-gateway:latest --image-pull-policy=Never
2. Check pod is runnning 
    kubectl get pods
    a. Can see number of ready container, status, restart count and age
    b. Status of POD can be {Pending, Running, Succeded, Failed, CrashLoopBack, ContainerCreated, Init, Terminating, Evicted, etc...}     

3. Check logs of POD
    kubectl logs -f api-gateway

4. View description of POD
    kubectl describe pods api-gateway

5. Access container inside POD from host machine using port forward
    kubectl port-forward api-gateway 8080:8080

6. Get pod details as with details
    kubectl get pods -o wide
    kubectl get pods -o yaml