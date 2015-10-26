include:
  - cobbler

cobbler-nginx-conf:
  file.managed:
    - name: /etc/nginx/sites-available/cobbler.conf
    - source: salt://cobbler/templates/cobbler_nginx.conf
    - template: jinja
    - user: root
    - group: root
    - mode: 0444

cobbler-nginx-conf-enabled:
  file.symlink:
    - name: /etc/nginx/sites-enabled/cobbler.conf
    - target: /etc/nginx/sites-available/cobbler.conf
    - user: root
    - group: root
    - mode: 0444
    - require:
      - file: cobbler-nginx-conf
    - listen_in:
      - service: nginx



