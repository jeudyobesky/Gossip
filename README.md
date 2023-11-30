# README

This is an app call Gossip.

A user from a city can create an ARTICLE named POTIN

Model:

CITY
COMMENT
LIKE
POTIN
PRIVATE_MESSAGE 
TAG_POTIN
TAG
USER 
USER
can create a COMMENT, 
can LIKE A COMMENT OR A POTIN
can create a POTIN (article)
can sent and received PRIVATE_MESSAGE

POTIN (article)
have a USER creator
can have multiple TAG.
can have multiple LIKE
can have multiple COMMENT

TAG
can have mutilple POTIN

TAG_POTIN
JUNCTION_TABLE between TAG and POTIN

CITY
has_many USERS

COMMENT
have a USER creator
belongs_to a POTIN

PRIVATE_MESSAGE
message between user with a class USER to separate the sender_id and recipient_id


