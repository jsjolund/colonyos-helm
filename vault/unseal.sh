#!/bin/bash

# Unseal Key 1: ngTRCGjFWi/rwazWOQEisawgZeNQJGnj0Eqam0usZ5kI
# Unseal Key 2: ewKb2pYxQUch0YAd2jkMjQPeW86ucz31X7YFMkJsFseF
# Unseal Key 3: fzsZv5SquZ/0BIPFriZDUYY/QNw9i0k8yYU3CCgBMd/s
# Unseal Key 4: 7IuhYD77HvdC8CTX43sMtpv6Kjx9DGdUtqwPCjUoXDLD
# Unseal Key 5: Mzxo5rAzXRl9IvQeO4ef4pSFcAeR96no9o8XZU9d5QC3

# Initial Root Token: hvs.qKNOhD0rN5ZOqtbFAnCIO9qx
#  hvs.qKNOhD0rN5ZOqtbFAnCIO9q


kubectl exec -n vault -it vault-0 -- vault operator unseal ngTRCGjFWi/rwazWOQEisawgZeNQJGnj0Eqam0usZ5kI
kubectl exec -n vault -it vault-0 -- vault operator unseal ewKb2pYxQUch0YAd2jkMjQPeW86ucz31X7YFMkJsFseF
kubectl exec -n vault -it vault-0 -- vault operator unseal fzsZv5SquZ/0BIPFriZDUYY/QNw9i0k8yYU3CCgBMd/s
