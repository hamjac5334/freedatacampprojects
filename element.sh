#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=periodic_table -t --no-align -c"

if [[ -z $1 ]]
then
  echo "Please provide an element as an argument."
else
  RESULT=$($PSQL "SELECT atomic_number, name, symbol FROM elements WHERE atomic_number::TEXT='$1' OR symbol='$1' OR name='$1';")

  if [[ -z $RESULT ]]
  then
    echo "I could not find that element in the database."
  else
    IFS="|" read ATOMIC_NUMBER NAME SYMBOL <<< "$RESULT"

    PROPERTIES=$($PSQL "SELECT atomic_mass, melting_point_celsius, boiling_point_celsius, type_id FROM properties WHERE atomic_number=$ATOMIC_NUMBER;")
    IFS="|" read MASS MELT BOIL TYPE_ID <<< "$PROPERTIES"

    TYPE=$($PSQL "SELECT type FROM types WHERE type_id=$TYPE_ID;")

    echo "The element with atomic number $ATOMIC_NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $MASS amu. $NAME has a melting point of $MELT celsius and a boiling point of $BOIL celsius."
  fi
fi

#commit 3