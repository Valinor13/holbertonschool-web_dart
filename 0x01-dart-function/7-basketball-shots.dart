// calculateScore - Calculate the score of a basketball shots by type
// @shotType: String - the type of the shot
// @shotsMade: int - the number of shots made
// @return: int - the score of the shots made
int calculateScore(String shotType, int shotsMade) {
  switch (shotType) {
    case '3 pointers':
      return 3 * shotsMade;
    case '2 pointers':
      return 2 * shotsMade;
    case 'Free throws':
      return 1 * shotsMade;
    default:
      return 0;
  }
}

// whoWins - determines who wins the game by totaling the points
// based on the number of shots made * their value:
// free throws = 1 point each, 2 pointers = 2 points each, 3 pointers = 3 points each
// @team1: Map of team 1 shots
// @team2: Map of team 2 shots
// @return: int 1 if team 1 wins, 2 if team 2 wins, 0 if tie
int whoWins(Map<String, int> team1, Map<String, int> team2) {
  int team1Score = 0;
  int team2Score = 0;
  team1.forEach((key, value) {
    team1Score += calculateScore(key, value);
  });
  team2.forEach((key, value) {
    team2Score += calculateScore(key, value);
  });
  if (team1Score > team2Score) {
    return 1;
  } else if (team1Score < team2Score) {
    return 2;
  } else {
    return 0;
  }
}
