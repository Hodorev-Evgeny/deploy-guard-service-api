export PROJECT_ROOT=$(shell pwd)


gen-proto:
	protoc --proto_path=$(PROJECT_ROOT)/proto \
           --go_out=$(PROJECT_ROOT)/api --go_opt=paths=source_relative \
           --go-grpc_out=$(PROJECT_ROOT)/api --go-grpc_opt=paths=source_relative \
           $(PROJECT_ROOT)/proto/agent/agent.proto