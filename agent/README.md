# Instalar as roles necessárias na máquina local

```sh
ansible-galaxy install --role-file=shared_folder/provisioning/requirements.yml --force
```

# Rodar o playbook na máquina local
```sh
ansible-playbook -i shared_folder/provisioning/inventory/dev.ini shared_folder/provisioning/playbook.yml --tags basico,dev
```