[![Build Status](https://drone.kiwi-labs.net/api/badges/Diesel-Net/fluentd/status.svg)](https://drone.kiwi-labs.net/Diesel-Net/fluentd)

# fluentd
Centralized log aggregator for Docker Swarm


# Notes
- Old (2017), but still on point with the preferred method
  - https://manoj-bhagwat60.medium.com/to-centralize-your-docker-logs-with-fluentd-and-elasticsearch-on-kubernetes-42d2ac0e8b6c
- New (2020), and explains why old method (leaving default driver to JSON, instead of using fluentd driver) is better
  - https://levelup.gitconnected.com/centralize-your-docker-logging-with-fluentd-a2b7e0a379ce
- Installing elastic search plugin
  - https://docs.fluentd.org/container-deployment/docker-compose
- Explanation of different approaches
  - https://coralogix.com/log-analytics-blog/managing-docker-logs-with-elk-and-fluentd/

## Installing External Dependencies
Ansible `2.11.5` was used at the time of this writing.
```bash
ansible-galaxy install -r .ansible/roles/requirements.yaml -p .ansible/roles --force
```

## Deploy
You will need to have the ansible-vault password file configured on your machine. Please read the relevant [ansible documentation](https://docs.ansible.com/ansible/latest/user_guide/vault.html#setting-a-default-password-source) for more information.

```bash
ansible-playbook .ansible/deploy.yaml -i .ansible/inventories/development
```
