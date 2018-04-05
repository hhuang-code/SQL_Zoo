-- https://sqlzoo.net/wiki/SELECT_from_Nobel_Tutorial

-- Q5: Show all details (yr, subject, winner) of the Literature prize winners for 1980 to 1989 inclusive.
select * from nobel where subject like 'Literature' and yr between 1980 and 1989;

-- Q6: Show all details of the presidential winners: Theodore Roosevelt, Woodrow Wilson, Jimmy Carter, Barack Obama
select * from nobel where winner in ('Theodore Roosevelt', 'Woodrow Wilson', 'Jimmy Carter', 'Barack Obama');

-- Q9: Show the year, subject, and name of winners for 1980 excluding Chemistry and Medicine
select * from nobel where yr = 1980 and not (subject in ('Chemistry', 'Medicine'));

-- Q12: Find all details of the prize won by EUGENE O'NEILL
select * from nobel where winner = 'Eugene O''Neill';
