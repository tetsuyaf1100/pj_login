

x="変更"
h="
{% extends \"base.html\" %}
{% block main %}
<h2>パスワード変更</h2>
{% include "_form.html" with submit_label=\"$x\" %}
{% endblock %}
"
echo $h
