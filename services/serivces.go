package services

import "net/http"

type Services interface {
	// Push a command to hardware device
	HealthCheck(w http.ResponseWriter, r *http.Request)
}
