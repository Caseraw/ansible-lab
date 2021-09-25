#!/bin/bash

curl -H "Cache-Control: no-cache" -sS \
https://raw.githubusercontent.com/Caseraw/ansible-lab/main/scripts/prep-lab.sh | bash

curl -H "Cache-Control: no-cache" -sS \
https://raw.githubusercontent.com/Caseraw/ansible-lab/main/scripts/git-clean-project.sh | bash

curl -H "Cache-Control: no-cache" -sS \
https://raw.githubusercontent.com/Caseraw/ansible-lab/main/scripts/git-pull-main.sh | bash

