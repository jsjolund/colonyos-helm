#!/bin/bash

colonies cron add --name backupcron --cron "0 0 2 * * *" --spec ./backup_workflow.json 
