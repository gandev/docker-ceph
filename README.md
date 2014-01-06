docker-ceph
===========

## Example Setup

### Create fake volumes on the host
```
sudo sh ./run.sh
```

This will give you a Ceph container

### Validation
The Container uses host network and persists Ceph configuration and keyrings on host /etc/ceph.

