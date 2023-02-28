kubectl -n vault get secret kc-initial-admin -o jsonpath='{.data.username}' | base64 --decode
kubectl -n vault get secret kc-initial-admin -o jsonpath='{.data.password}' | base64 --decode
