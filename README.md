# README

This is a Ruby on RAILS app call Gossip.</br>

A user from a city can create an ARTICLE named POTIN</br>

PAST THIS IN YOUR TERMINAL TO INIT THE APP:</br>
rails db:drop db:create db:migrate db:seed</br></br>


Model:</br>

CITY</br>
COMMENT</br>
LIKE</br>
POTIN</br>
PRIVATE_MESSAGE</br>
TAG_POTIN</br>
TAG</br>
USER</br>
</br>
</br>

USER</br>
can create a COMMENT,</br> 
can LIKE A COMMENT OR A POTIN (using the LIKE model)</br>
can create a POTIN (article)</br>
can sent and received PRIVATE_MESSAGE</br>

POTIN (article)</br>
have a USER creator</br>
can have multiple TAG.</br>
can have multiple LIKE</br>
can have multiple COMMENT</br>

TAG</br>
can have mutilple POTIN</br>

TAG_POTIN</br>
JUNCTION_TABLE between TAG and POTIN</br>

CITY</br>
has_many USERS</br>

COMMENT</br>
have a USER creator</br>
belongs_to a POTIN</br>

PRIVATE_MESSAGE</br>
message between user with a class USER to separate the sender_id and recipient_id</br>


