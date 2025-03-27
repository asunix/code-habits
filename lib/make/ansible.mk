.PHONY: ansible/venv/install
## Install Ansible using Python virtual environment
ansible/venv/install:
ifeq ("$(wildcard .venv)", "")
	@echo "Missing .venv directory try to install it executing:"
	@echo "make python/virtualenv/init"
else
	@echo "Attivare il virtual env e installare ansible-core"
	@. .venv/bin/activate; pip install --upgrade pip; pip install ansible-core
endif

.PHONY: ansible/install
## Install Ansible
ansible/install:
	@sudo apt update
	@sudo apt install --yes software-properties-common
	@sudo add-apt-repository --yes --update ppa:ansible/ansible
	@sudo apt install --yes ansible

#.PHONY: ansible/playbooks/doc/init
#ansible/playbooks/doc/init:
#	cd $(HABITS)/lib/ansible && ansible-playbook playbooks/doc/init.yaml --extra-vars="workspace=$(WORKSPACE) habits=$(HABITS)"

#.PHONY: ansible/playbooks/doc/build
#ansible/playbooks/doc/build:
#	@cd $(HABITS)/lib/ansible && ansible-playbook playbooks/doc/build.yaml --extra-vars="workspace=$(WORKSPACE) habits=$(HABITS)" --extra-vars=@$(WORKSPACE)/doc/habits.yaml

#.PHONY: ansible/playbooks/doc/remove
#ansible/playbooks/doc/remove:
#	@cd $(HABITS)/lib/ansible && ansible-playbook playbooks/doc/remove.yaml --extra-vars="workspace=$(WORKSPACE) habits=$(HABITS)"

# .PHONY: ansible/playbooks/github/actions/init
# ansible/playbooks/github/actions/init:
# 	@cd $(HABITS)/lib/ansible && ansible-playbook playbooks/github/actions/init.yaml --extra-vars="workspace=$(WORKSPACE) habits=$(HABITS)"

# .PHONY: ansible/playbooks/github/actions/remove
# ansible/playbooks/github/actions/remove:
# 	@cd $(HABITS)/lib/ansible && ansible-playbook playbooks/github/actions/remove.yaml --extra-vars="workspace=$(WORKSPACE) habits=$(HABITS)"

# .PHONY: ansible/playbooks/github/issues/init
# ansible/playbooks/github/issues/init:
# 	@cd $(HABITS)/lib/ansible && ansible-playbook playbooks/github/issues/init.yaml --extra-vars="workspace=$(WORKSPACE) habits=$(HABITS)"

# .PHONY: ansible/playbooks/github/issues/remove
# ansible/playbooks/github/issues/remove:
# 	@cd $(HABITS)/lib/ansible && ansible-playbook playbooks/github/issues/remove.yaml --extra-vars="workspace=$(WORKSPACE) habits=$(HABITS)"

#.PHONY: ansible/playbooks/habits/remove
#ansible/playbooks/habits/remove:
#	@cd $(HABITS)/lib/ansible && ansible-playbook playbooks/habits/remove.yaml --extra-vars="workspace=$(WORKSPACE) habits=$(HABITS)"

# .PHONY: ansible/playbooks/github/pull-request/init
# ansible/playbooks/github/pull-request/init:
# 	@cd $(HABITS)/lib/ansible && ansible-playbook playbooks/github/pull-request/init.yaml --extra-vars="workspace=$(WORKSPACE) habits=$(HABITS)"

# .PHONY: ansible/playbooks/github/pull-request/remove
# ansible/playbooks/github/pull-request/remove:
# 	@cd $(HABITS)/lib/ansible && ansible-playbook playbooks/github/pull-request/remove.yaml --extra-vars="workspace=$(WORKSPACE) habits=$(HABITS)"

# .PHONY: ansible/playbooks/github/workflows/init
# ansible/playbooks/github/workflows/init:
# 	@cd $(HABITS)/lib/ansible && ansible-playbook playbooks/github/workflows/init.yaml --extra-vars="workspace=$(WORKSPACE) habits=$(HABITS)"

# .PHONY: ansible/playbooks/github/workflows/remove
# ansible/playbooks/github/workflows/remove:
# 	@cd $(HABITS)/lib/ansible && ansible-playbook playbooks/github/workflows/remove.yaml --extra-vars="workspace=$(WORKSPACE) habits=$(HABITS)"

#.PHONY: ansible/playbooks/ubuntu/install
#ansible/playbooks/ubuntu/install:
#	@cd $(HABITS)/lib/ansible && ansible-playbook playbooks/ubuntu/install.yaml

#.PHONY: ansible/playbooks/ubuntu/update
#ansible/playbooks/ubuntu/update:
#	@cd $(HABITS)/lib/ansible && ansible-playbook playbooks/ubuntu/update.yaml --ask-become-pass
