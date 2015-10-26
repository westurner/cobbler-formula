
{% from "cobbler/map.jinja" import cobbler with context %}

{{ cobbler.prefix }}:
  file.directory:
    - user: root
    - group: root
    - dir_mode: 0644

{{ cobbler.prefix }}/src:
  file.directory:
    - user: {{ cobbler.user }}
    - group: root
    - dir_mode: 0644

cobbler_git_repo:
  git.latest:
    - name: https://github.com/cobbler/cobbler
    - rev: v2.6.5 
    - target: {{ cobbler.prefix }}
    #- runas: 

