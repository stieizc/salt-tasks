{% from 'map.jinja2' import user %}

{% for conf in '.bashrc', '.bash_profile' %}
{{ user.home}}/{{ conf }}:
  file.managed:
    - source: salt://package/files/bash/{{ conf }}
    - user: {{ user.name }}
    - group: {{ user.name }}
{% endfor %}
