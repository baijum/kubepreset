#!/bin/bash

kubectl delete deployment app1
kubectl delete crd backingservices.app1.example.org
kubectl delete secrets secret1
kubectl delete service myservice1
kubectl patch servicebindings.binding.x-k8s.io sb1 -p '{"metadata":{"finalizers":null}}' --type=merge

kubectl delete deployment app2
kubectl delete crd backingservices.app2.example.org
kubectl delete secrets secret2
kubectl delete service myservice2
kubectl patch servicebindings.binding.x-k8s.io sb2 -p '{"metadata":{"finalizers":null}}' --type=merge

kubectl delete deployment app3
kubectl delete crd backingservices.app3.example.org
kubectl delete secrets secret3
kubectl delete service myservice3
kubectl patch servicebindings.binding.x-k8s.io sb3 -p '{"metadata":{"finalizers":null}}' --type=merge

kubectl delete deployment app4
kubectl delete crd backingservices.app4.example.org
kubectl delete secrets secret4
kubectl delete service myservice4
kubectl patch servicebindings.binding.x-k8s.io sb4 -p '{"metadata":{"finalizers":null}}' --type=merge

kubectl delete deployment app5
kubectl delete crd backingservices.app5.example.org
kubectl delete secrets secret5
kubectl delete service myservice5
kubectl patch servicebindings.binding.x-k8s.io sb5 -p '{"metadata":{"finalizers":null}}' --type=merge

kubectl delete deployment app6
kubectl delete crd backingservices.app6.example.org
kubectl delete secrets secret6
kubectl delete service myservice6
kubectl patch servicebindings.binding.x-k8s.io sb6 -p '{"metadata":{"finalizers":null}}' --type=merge

kubectl delete deployment second-app6

kubectl delete deployment app7
kubectl delete crd backingservices.app7.example.org
kubectl delete secrets secret7
kubectl delete service myservice7
kubectl patch servicebindings.binding.x-k8s.io sb7 -p '{"metadata":{"finalizers":null}}' --type=merge

kubectl delete crd servicebindings.binding.x-k8s.io
kubectl delete crd clusterapplicationresourcemappings.binding.x-k8s.io
kubectl delete crd custompods.binding.kubepreset.dev
sleep 5
kubectl get pod
