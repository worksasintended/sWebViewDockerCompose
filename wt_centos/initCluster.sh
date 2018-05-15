#!/bin/bash

function add_account {
        yes y | sacctmgr add account $1 Description="does not matter"
}

function add_user {
        useradd -G users -m -s /bin/bash $1
        yes y | sacctmgr add user $1 DefaultAccount=$2 
}

yes y | sacctmgr add cluster linux
add_account compus

add_user ejima compus
add_user walbr compus
add_user geistn compus
add_user langef compus
add_user bandelog compus
add_user dk101247 compus
add_user durasj compus
add_user moellerd compus
add_user og101912 compus
add_user padivatt compus
add_user pm101481 compus
add_user thiessen compus
function add_cluster {
        sacctmgr add cluster linux
}

function add_account {
        yes y | sacctmgr add account $1 Description="does not matter"
}

function add_user {
        useradd -G users -m -s /bin/bash $1
        yes y | sacctmgr add user $1 DefaultAccount=$2 
}

add_account compus

add_user ejima compus
add_user walbr compus
add_user geistn compus
add_user langef compus
add_user bandelog compus
add_user dk101247 compus
add_user durasj compus
add_user moellerd compus
add_user og101912 compus
add_user padivatt compus
add_user pm101481 compus
add_user thiessen compus

