echo "[INFO] Starting Minikube..."
minikube start
echo "[INFO] Ensuring Minikube is running..."
kubectl cluster-info

echo "[INFO] Deploying Nginx server..."
kubectl apply -f nginx.yaml
echo "[INFO] Observing Nginx server..."
kubectl get pods
sleep 30
echo "[INFO] Accessing Nginx service..."
minikube service nginx-service