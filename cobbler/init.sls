
{% from "cobbler/map.jinja" import cobbler with context %}

cobbler:
  pkg:
    - installed
    - name: {{ cobbler.pkg }}
  service:
    - running
    - enable: True
    - name: {{ cobbler.service }}
