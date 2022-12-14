#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

echo "$($PSQL "TRUNCATE  teams, games;")"  
cat games.csv | while IFS=","  read YEAR  ROUND WINNER OPPONENT WINNER_G OPPONENT_G
do
if [[ $YEAR != year ]]
then

       WI="$($PSQL "INSERT INTO  teams(name) VALUES('$WINNER')")"
       if [[ $WI = 'INSERT 0 1' ]]
       then
       echo "Sucessfully added ", :$WINNER 
       
          fi
            OP="$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")"
            if [[ $WI = 'INSERT 0 1' ]]
       then
       echo "Sucessfully added ", :$OPPONENT 
       
          fi
         
             WINNER_ID="$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")"
            
             OPPONENT_ID="$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")"
             echo "$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals ) VALUES ($YEAR, '$ROUND', $WINNER_ID, $OPPONENT_ID, $WINNER_G, $OPPONENT_G )")" 


GART="$($PSQL "SELECT  game_id FROM games WHERE year=$YEAR AND round='$ROUND'  AND winner_id=$WINNER_ID  AND opponent_id=$OPPONENT_ID AND winner_goals=$WINNER_G AND  opponent_goals=$OPPONENT_G ")"

echo  "$($PSQL "INSERT INTO link(team_id, game_id) VALUES($WINNER_ID, $GART)")" 
echo "$($PSQL "INSERT INTO link(team_id, game_id) VALUES ($OPPONENT_ID, $GART)")"


fi
 
done
