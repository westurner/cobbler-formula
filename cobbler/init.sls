
{% from "cobbler/map.jinja" import cobbler with context %}

cobbler:
  pkg:
    - installed
    - name: {{ cobbler.pkg }}
