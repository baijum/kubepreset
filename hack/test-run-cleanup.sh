#!/bin/bash

kubectl delete deployment app1
kubectl delete crd backingservices.app1.example.org
kubectl delete secrets secret1
kubectl delete service myservice1

kubectl delete deployment app2
kubectl delete crd backingservices.app2.example.org
kubectl delete secrets secret2
kubectl delete service myservice2

kubectl delete deployment app3
kubectl delete crd backingservices.app3.example.org
kubectl delete secrets secret3
kubectl delete service myservice3

kubectl delete deployment app4
kubectl delete crd backingservices.app4.example.org
kubectl delete secrets secret4
kubectl delete service myservice4

kubectl delete crd servicebindings.binding.x-k8s.io
sleep 5
kubectl get pod
