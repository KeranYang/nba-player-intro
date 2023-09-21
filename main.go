package main

import (
	"fmt"

	models "github.com/KeranYang/nba-player-intro/player"
)

func main() {
	jordan := models.Player{
		Name:     "Michael Jordan",
		Team:     "Chicago Bulls",
		Position: "Shooting Guard",
		Number:   23,
		School: models.School{
			Name: "University of North Carolina",
			City: "Chapel Hill",
		},
	}
	println(fmt.Sprintf("Now introducing your %s team. %s from %s, %s, number %d, %s!",
		jordan.Team, jordan.Position, jordan.School.Name, jordan.School.City, jordan.Number, jordan.Name))
}
