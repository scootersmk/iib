salt-master:
  pkg:
    - installed
  service: 
    - running
    - require:
      - pkg: salt-master

/etc/salt/master:
  file:
    - managed
    - source: salt://salt/master
    - require:
      - pkg: salt-master
