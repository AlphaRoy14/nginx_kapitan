{% set i = inventory.parameters %}

# Welcome to the README!

Target *{{ i.target_name }}* is running:

* Running on port {{ i.nginx.port }}. 
* server name is {{ i.nginx.name }}.
* Custom 404 error paige available.
