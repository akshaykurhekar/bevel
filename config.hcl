storage "file" {
   path    = "./vault/data"
}
listener "tcp" {
   address     = "0.0.0.0:8200"
   tls_disable = 1
}
ui = true
api_addr="http://localhost:8200"
cluster_addr="http://127.0.0.1:8201"