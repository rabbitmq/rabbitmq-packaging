# This script is called by rabbitmq-server-ha.ocf during RabbitMQ
# cluster start up. It is a convenient place to set your cluster
# policy here, for example:
# ${OCF_RESKEY_ctl} set_policy ha-all "." '{"ha-mode":"all", "ha-sync-mode":"automatic"}' --apply-to all --priority 0

