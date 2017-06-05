# kube-env-gen

> Helper to generate kubernetes container env mappings with Secret and ConfigMap

## Prepare

`./secret`

```
SECRET_KEY_1
SECRET_KEY_2
```

`./configmap`

```
CONFIGMAP_KEY_1
CONFIGMAP_KEY_2
```

## Generate

> Generate with env

### Example

`$ SECRET_NAME=your-secret CONFIGMAP_NAME=your-config make gen`

> SECRET_NAME refers Kubernetes Secret object's name

>CONFIGMAP_NAME refers Kubernetes Secret object's name

### Example result
```
        - name: SECRET_KEY_1
          valueFrom:
            secretKeyRef:
              key: SECRET_KEY_1
              name: your-secret
        - name: SECRET_KEY_2
          valueFrom:
            secretKeyRef:
              key: SECRET_KEY_2
              name: your-secret
        - name: CONFIGMAP_KEY_1
          valueFrom:
            configMapKeyRef:
              key: CONFIGMAP_KEY_1
              name: your-config
        - name: CONFIGMAP_KEY_2
          valueFrom:
            configMapKeyRef:
              key: CONFIGMAP_KEY_2
              name: your-config
```
