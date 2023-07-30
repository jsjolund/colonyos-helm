#!/bin/bash

colonies keychain add --id $COLONIES_SERVER_ID --prvkey $COLONIES_SERVER_PRVKEY
colonies keychain add --id $COLONIES_COLONY_ID --prvkey $COLONIES_COLONY_PRVKEY
colonies keychain add --id $COLONIES_EXECUTOR_ID --prvkey $COLONIES_EXECUTOR_PRVKEY
colonies colony add --spec ./colonies/colony.json --colonyprvkey $COLONIES_COLONY_PRVKEY
colonies executor add --spec ./colonies/cli_executor.json --executorprvkey $COLONIES_EXECUTOR_PRVKEY
colonies executor approve --executorid $COLONIES_EXECUTOR_ID
