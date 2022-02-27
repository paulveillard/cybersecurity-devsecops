# Ansible Role: Gitlab-runner
[![Build Status](https://travis-ci.org/Furdarius/ansible-gitlab-runner.svg?branch=master)](https://travis-ci.org/Furdarius/ansible-gitlab-runner)

Install and resgister shell gitlab runner on remote machine.

## Install

```bash
ansible-galaxy install Furdarius.gitlab-runner
```

## Variables

All variables can be found in [defaults/main.yml](https://github.com/Furdarius/ansible-gitlab-runner/blob/master/defaults/main.yml)


## Playbook example

```yaml
---
- hosts: gitlab-runner
  become: true
  roles:
    - gitlab-runner
  vars:
    gitlab_runner_coordinator_url: 'https://gitlab.example.com/ci'
    gitlab_runner_tags: [ 'docker' ]
    gitlab_runner_coordinator_cert_path: "./certs/gitlab.example.com.crt"
  vars_prompt:
   - name: "gitlab_runner_registration_token"
     prompt: "Registration token is"
  tags:
    - runner
```
