Feature: Validate journeys against the national routeing guide

  @inprogress
  Scenario: The geographically shortest route is always valid
    Given a journey:
      | SEV | alight   | train     |
      | TON | change   | train     |
      | HIB | stopping | train     |
      | TBW | egress   | train     |
    Then the following routes should be:
      | ***** | valid   |

  @inprogress
  Scenario: Any journey within the specified margin of the shortest route is valid

  # TODO I'm not sure I've understood that correctly. Maybe it's only if the data doesn't exist
  @inprogress
  Scenario: Distances of non-rail (including timetabled-bus) legs are not included in the distance calculations

  # TODO a better demonstration would be a route that would fail if the last stops were train
  @inprogress
  Scenario: Fixed legs at the beginning and end should be ignored
    Given a journey:
      | CST | n/a      | bus       |
      | LBG | stopping | train     |
      | WAE | stopping | train     |
      | BLK | n/a      | walk      |
    Then the following routes should be:
      | ***** | valid   |

  @inprogress
  Scenario: The origin and destination share a common routeing point so only Local Journey Rules apply

  @inprogress
  Scenario: A local journey on a through train is always valid

  # If there are A->C services that are shorter a journey from A->B->C is still valid if B is a common routeing point of A and C
  # as long as there are no other common routeing points that would result in a shorter journey
  @inprogress
  Scenario: A local journey is valid via the best common routeing point

  @inprogress
  Scenario: A local journey is not valid via a common routeing point if there is a common routeing point that results in a shorter journey

  @inprogress
  Scenario: A local journey is valid if it is the shortest route or within the margin of the shortest route

  @inprogress
  Scenario: A local journey is valid if it is the shortest route except deviations which are in the same station group as a station on the shortest route

  # Eastbourne doubleback?
  @inprogress
  Scenario: A local journey is valid if is the shortest route except for one valid doubleback at the origin or destination

  # TODO need more negative cases

  
