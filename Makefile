.PHONY: swagger-gen
swagger-gen:
	go get -u github.com/go-swagger/go-swagger/cmd/swagger
	# pull json file from remote server
	curl -s https://raw.githubusercontent.com/KeranYang/nba-player-go/main/swagger-schema/player.json --output ./schema-json/player.json
	swagger generate model -f ./schema-json/player.json -t ./player

.PHONY: run
run: swagger-gen
	go run main.go