# nginx configuration through kapitan

* two environments 1. dev 2. prod
* dev runs on port 80, prod runs on port 8080
* custom 404 error page available for the dev environnment and can be set for prod by adding the parameters.nginx.error_page parameter. 

# File Structure 
```
.
├── README.md
├── compiled
│   ├── dev
│   │   ├── README.md
│   │   ├── manifests
│   │   │   ├── html
│   │   │   │   ├── custom_404.html
│   │   │   │   └── index.html
│   │   │   └── nginx.conf
│   │   └── run.sh
│   └── prod
│       ├── README.md
│       ├── manifests
│       │   ├── html
│       │   │   ├── custom_404.html
│       │   │   └── index.html
│       │   └── nginx.conf
│       └── run.sh
├── inventory
│   ├── classes
│   │   ├── common.yml
│   │   └── my_component.yml
│   └── targets
│       ├── dev.yml
│       └── prod.yml
└── templates
    ├── custom_404.html
    ├── docs
    │   └── README.md
    ├── index.html
    ├── nginx.conf
    └── scripts
        ├── _run.sh.swp
        └── run.sh

13 directories, 21 files
```
