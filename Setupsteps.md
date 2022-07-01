Prerequisites:

    git/gitops
    docker
    ansible
    minikube
    helm
    hashicorp {vault}
    DNS

    install all above tookit / binary's

  ## steps to setup bevel repo

    fork repo
    create local branch
    clone repo

    run vault instance create secrete
        create config.hcl file
        unseal secret
        check status { vault status}
        export VAULT_ADDR="http://127.0.0.1:8200"
    run minikube
    create build dir in root
    create build/network.yaml file from ../shared/indy-minikube.yaml
    configure network.yaml 
        docker
        vault section 
        git 
        
        for all nodes

    copy kube files { ca.crt, client.crt, client.key } to build    
        
    run docker server 
        $ docker run -it -v $(pwd):/home/bevel/ --network="host" ghcr.io/hyperledger/bevel-build:latest

    check kubernetes pods
        $ kubectl get pods --all-namespaces -w

