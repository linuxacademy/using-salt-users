{% for user, arg in salt['pillar.get']('users', {}).iteritems() %}

{{ user }}_user:
  user.present:
    - name: {{ user }}
    - password: {{ arg.password }}
    - home: {{ arg.home }}
    - shell: {{ arg.shell }}

{% endfor %}
