export PROJECT_ROOT=$(shell pwd)


gen-proto:
	protoc --proto_path=$(PROJECT_ROOT)/proto \
           --go_out=$(PROJECT_ROOT)/api --go_opt=paths=source_relative \
           --go-grpc_out=$(PROJECT_ROOT)/api --go-grpc_opt=paths=source_relative \
           $(PROJECT_ROOT)/proto/metric-service/metric-service.proto \
           $(PROJECT_ROOT)/proto/logger-service/logger-service.proto \
           $(PROJECT_ROOT)/proto/gateway/gateway.proto