package handlers

import (
	"github.com/nnchien/go-practices/services"
	"github.com/nnchien/go-practices/internal/fsm"
)

type Handler struct {

}

func NewHandler() services.Services {
	return &Handler{}
}

type FSMHandler struct {
	fsm *fsm.FiniteStateMachine
}

func NewFSMHandler() services.FSMServices {
	return &FSMHandler{
		fsm: fsm.FSM,
	}
}
