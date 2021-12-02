

state = ("変更", "更新")
files = ("./change.html", "./update.html")
for x, f in zip(state, files):
	h = f"""
	{{% extends "base.html" %}}
	{{% block main %}}
	<h2>パスワード{x}</h2>
	{{% include "_form.html" with submit_label="{x}" %}}
	{{% endblock %}}
	"""
	print(f)
	print(h)
	with open(f, "w") as f:
		print(h, file=f)
