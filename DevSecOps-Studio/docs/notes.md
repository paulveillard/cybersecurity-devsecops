Adding new functionality
=======================
1. Add roles/functionality in usual places like roles and machines.yml files
2. Replicate the same in molecule tests under playbook.yml
3. Write TDD tests to validate the ansible scripts


Molecule Issues:
===============

- To fix under molecule runner "Failed to import the required Python library (setuptools) on instance's Python /usr/bin/python. Please read module documentation and install in the appropriate location. If the required library is installed, but Ansible is using the wrong Python interpreter, please consult the documentation on ansible_python_interpreter under `playbook.yml`

`ansible_python_interpreter: /usr/bin/python3`

- Also host entries won't work in docker because of [https://stackoverflow.com/questions/28327458/how-to-add-my-containers-hostname-to-etc-hosts]()

`add_host_entries: false`
 

Jenkins Issues:
===============

1. Setup wizard appear even when jenkins.install.runSetupWizard=false

Fix is to add the following to geerlingguy.jenkins role task

```bash
- name: Fix a defect to disable setup wizard
  jenkins_script:
    script: |
      import static jenkins.model.Jenkins.instance as jenkins
      import jenkins.install.InstallState
      if (!jenkins.installState.isSetupComplete()) {
        InstallState.INITIAL_SETUP_COMPLETED.initializeState()
      }
    user: "{{ admin.userid }}"
    password: "{{ admin.password }}"
```

2. Plugin installation fails so added retries, see [https://github.com/geerlingguy/ansible-role-jenkins/issues/169]()
so added following four lines to plugins.yml task  

```bash
  retries: 2                # https://github.com/geerlingguy/ansible-role-jenkins/issues/169
  delay: 3
  register: result            # <<<
  until: result is succeeded  # <<<
 
```

2. Because of a bug, wizard will show even after successful installation of Jenkins

Fix is to add the following task as disable-wizard.yml and call it from main.yml

see [https://github.com/geerlingguy/ansible-role-jenkins/issues/181]()

```bash
- name: Fix a defect to disable setup wizard
  jenkins_script:
    script: |
      import static jenkins.model.Jenkins.instance as jenkins
      import jenkins.install.InstallState
      if (!jenkins.installState.isSetupComplete()) {
        InstallState.INITIAL_SETUP_COMPLETED.initializeState()
      }
    user: "{{ jenkins_admin_username }}"
    password: "{{ jenkins_admin_password }}"
```

Gitlab
=======

- Verify the gitlab works fine locally in VM because of docker bug on Travis

- For molecule tests you need to use the following configs apart from usual provisioning/gitlab.yml

```bash

  vars:
    gitlab_restart_handler_failed_when: false

  pre_tasks:
    - name: Update apt cache.
      apt: update_cache=yes cache_valid_time=600
      when: ansible_os_family == 'Debian'
      changed_when: false

    - name: Remove the .dockerenv file so GitLab Omnibus doesn't get confused.
      file:
        path: /.dockerenv
        state: absent
        
```

- For ubuntu 18.04, we need to install `gnupg2` [https://github.com/geerlingguy/ansible-role-gitlab/issues/145]()

```bash

- name: Install GitLab dependencies (Debian).
  apt:
    name: gnupg2
    state: present
  when: ansible_os_family == 'Debian'
  
```

DevSecOps-Box
=============
- Don't forget to add machine's host name in hosts_entry.yml once you a add new box.
- Ensure host entries are working fine in VM, cant test hosts entries in docker because of its nature see - [https://stackoverflow.com/questions/28327458/how-to-add-my-containers-hostname-to-etc-hosts]()


Linting Issues
=============

- Skipping 204 line too long for sake of sanity
- Skipping 306 test as it doesn't apply to Debian - [https://github.com/geerlingguy/ansible-role-docker/issues/191]()
