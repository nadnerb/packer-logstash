Logstash AWS AMI with Packer
=============

Install [Packer](https://www.packer.io/) and add it to your PATH.

Create your logstash AMI in AWS, using your access and secret keys.

This also installs [Consul](https://www.consul.io/). This will need to be configured separately as it would be a good
idea to join an existing consul cluster.

```
packer build \
  -var 'aws_access_key=your_key' \
  -var 'aws_secret_key=your_secret' \
  -var 'aws_vpc_id=your_vpc_id' \
  -var 'aws_subnet_id=your_subnet_id' \
  logstash.json
```

Or

```
packer build -var-file='packer_vars.json' logstash.json
```

Extra variables exposed:

* aws_source_ami (defaults to `ami-cab258a8` for Ubuntu 16.04.3 LTS)
* aws_region (defaults to `ap-southeast-2`)
* aws_instance_type (defaults to `t2.small`)
* aws_vpc_id (default)
* aws_subnet_id (none)
* ami_name_prefix (defaults to `logstash`)
* logstash_version (defaults to `6.0.0`)
* consul_version (defaults to `1.0.1`)
* consul_template_version (defaults to `0.19.4`)

###Troubleshooting

* Make sure you have set the AWS region and the correct source AMI (Ubuntu 16.x recommended) for that region
