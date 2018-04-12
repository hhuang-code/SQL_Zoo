-- https://sqlzoo.net/wiki/The_JOIN_operation

-- Q3: Modify it to show the player, teamid, stadium and mdate for every German goal.
select player, teamid, stadium, mdate from game join goal on (game.id = goal.matchid and goal.teamid = 'GER');

-- Q4: Show the team1, team2 and player for every goal scored by a player called Mario player LIKE 'Mario%'
select team1, team2, player from game join goal on (game.id = goal.matchid and goal.player like 'Mario%');

-- Q5: Show player, teamid, coach, gtime for all goals scored in the first 10 minutes gtime<=10
select player, teamid, coach, gtime from goal join eteam on (goal.teamid = eteam.id and goal.gtime <= 10);

-- Q6: List the the dates of the matches and the name of the team in which 'Fernando Santos' was the team1 coach.
select mdate, teamname from game join eteam on (game.team1 = eteam.id and coach = 'Fernando Santos');  

-- Q7: List the player for every goal scored in a game where the stadium was 'National Stadium, Warsaw'
select player from goal join game on (goal.matchid = game.id and stadium = 'National Stadium, Warsaw');

-- Q8: Instead show the name of all players who scored a goal against Germany.
select distinct(player) from goal join game on goal.matchid = game.id where goal.teamid <> 'GER' 
  and (game.team1 like 'GER' or game.team2 like 'GER');
  
