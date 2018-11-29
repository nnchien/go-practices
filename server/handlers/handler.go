package handlers

import (
	"github.com/nnchien/go-practices/services"
	"github.com/nnchien/go-practices/internal/fsm"
)

type Handler struct {
	fsm *fsm.FiniteStateMachine
}

func NewHandler() services.FSMServices {
	return &Handler{
		fsm: fsm.FSM,
	}
}
