Feature: Search games by developer

    @gamesByName
    Scenario: Filter games developed by CD Projekt
        Given a set of games
        | NAME                       | RELEASE DATE | DEVELOPER            | RATE   |
        | The Witcher 3: Wild Hunt   | 2015         | CD Projekt           | M      |
        | Splatoon                   | 2016         | Nintendo             | T      |
        | Super Smash Bros. Ultimate | 2018         | Bandai Namco Studios | E      |
        | The Last of Us             | 2013         | Naughty Dog          | M      |
        Given the user enters the developer: CD Projekt
        When the user search games by developer
        Then 1 games will match
        And the names of these games are
        | NAME                       |
        | The Witcher 3: Wild Hunt   |
        And the following message is displayed: A game developed by CD Projekt was found.

        @gamesByName
    Scenario: Filter games developed by Rockstar
        Given a set of games
        | NAME                       | RELEASE DATE | DEVELOPER            | RATE   |
        | The Witcher 3: Wild Hunt   | 2015         | CD Projekt           | M      |
        | Splatoon                   | 2016         | Nintendo             | T      |
        | Super Smash Bros. Ultimate | 2018         | Bandai Namco Studios | E      |
        | The Last of Us             | 2013         | Naughty Dog          | M      |
        Given the user enters the developer: Rockstar
        When the user search games by developer
        Then 0 games will match
        And the following message is displayed: No game developed by Rockstar found