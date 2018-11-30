package handlers

import (
	"net/http"
	"fmt"
)

func (h *FSMHandler) Push(w http.ResponseWriter, r *http.Request) {
	code, err := h.fsm.PushCommand(r.FormValue("command"))
	if err != nil {
		fmt.Fprintf(w, "%v", err)
	}
	w.WriteHeader(code)
}
