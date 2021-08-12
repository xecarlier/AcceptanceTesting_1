Feature: Search games by rating

    @gamesByName
    Scenario: Filter games with the M rating
        Given a set of games
        | NAME                       | RELEASE DATE | DEVELOPER            | RATE   |
        | The Witcher 3: Wild Hunt   | 2015         | CD Projekt           | M      |
        | Splatoon                   | 2016         | Nintendo             | T      |
        | Super Smash Bros. Ultimate | 2018         | Bandai Namco Studios | E      |
        | The Last of Us             | 2013         | Naughty Dog          | M      |
        Given the user enters the rating: M
        When the user search games by rating
        Then 2 games will match
        And the names of these games are
        | NAME                       |
        | The Witcher 3: Wild Hunt   |
        | The Last of Us             |
        And the following message is displayed: 2 games were found.

        @gamesByName
    Scenario: Filter games with the X rating
        Given a set of games
        | NAME                       | RELEASE DATE | DEVELOPER            | RATE   |
        | The Witcher 3: Wild Hunt   | 2015         | CD Projekt           | M      |
        | Splatoon                   | 2016         | Nintendo             | T      |
        | Super Smash Bros. Ultimate | 2018         | Bandai Namco Studios | E      |
        | The Last of Us             | 2013         | Naughty Dog          | M      |
        Given the user enters the rating: X
        When the user search games by rating
        Then 0 games will match
        And the following message is displayed: No game with the specified rating was found.