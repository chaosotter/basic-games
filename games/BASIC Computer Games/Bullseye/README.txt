Bullseye

In this game, up to 20 players throw darts at a target with 10-, 20-,
30-, and 40-point zones.  The objective is to get 200 points.

You have a choice of three methods of throwing:

  Throw   Description          Probable Score
  -----   ------------------   -------------------------
    1     Fast overarm         Bullseye or complete miss
    2     Controlled overarm   10, 20, or 30 points
    3     Underarm             Anything

You will find after playing a while that different players will swear
by different strategies.  However, consider the expected score per
throw by always using Throw 3 (program line 220):

  Score (S)   Probability (P)   S x P
  ---------   ---------------   -----
     40       1.00-.95 = .05      2
     30        .95-.75 = .20      6
     20        .75-.45 = .30      6
     10        .45-.05 = .40      4
      0        .05-.00 = .05      0
                                -----
  Expected score per throw =     18

Calculate the expected scores for the other throws and you may be
surprised!

The program was written by David Ahl of Creative Computing.
