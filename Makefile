.PHONY: go-jsonschema-gen
go-jsonschema-gen:
	go get github.com/atombender/go-jsonschema/...
	go install github.com/atombender/go-jsonschema/cmd/gojsonschema@latest
	curl -s https://raw.githubusercontent.com/KeranYang/nba-player-go/main/schema/schemas.json --output ./schema-json/player.json
	go-jsonschema -p models ./schema-json/player.json -o ./player/player.go

.PHONY: run
run: go-jsonschema-gen
	go run main.go